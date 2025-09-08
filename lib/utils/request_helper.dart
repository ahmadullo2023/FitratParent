import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:logger/logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import '../data/db/cache.dart';
import '../main.dart';
import '../presentation/login/pages/login_screen.dart';
import '../presentation/login/repository/login_repository.dart';
import 'exceptions/failure.dart';

bool isTokenExpired(String token) {
  log(token);
  if (token.isEmpty) {
    return true;
  }
  return JwtDecoder.isExpired(token);
}

final baseUrl = 'https://api.dev.fitrat.sectorsoft.uz';
// final baseUrl = 'https://api.fitrat.sectorsoft.uz';
// final baseUrl = 'https://api.ft.sector-soft.ru';
// final baseUrl = 'https://api.fitrat.sector-soft.ru';

class RequestHelper {
  final logger = Logger();
  final dio = Dio()
    ..interceptors.add(TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
        printResponseMessage: true,
      ),
    ));

  Completer<void>? _refreshCompleter;

  RequestHelper() {
    // 1) Talker logger interceptor
    dio.interceptors.add(TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
        printResponseMessage: true,
      ),
    ));

    // 2) Alice interceptor (eng muhim qismi!)
    dio.interceptors.add(alice.getDioInterceptor());
  }

  String? get _token {
    final token = cache.getString('access_token');

    return token;
  }

  String? get _refresh_token {
    final token = cache.getString('refresh_token');

    return token;
  }

  Future<void> _refreshToken() async {
    if (kDebugMode) {
      logger.d('Unauthorized. Attempting to refresh token...');
    }
    if (_refreshCompleter != null && !_refreshCompleter!.isCompleted) {
      await _refreshCompleter!.future;
      return;
    }

    _refreshCompleter = Completer();

    try {
      if (isTokenExpired(_refresh_token ?? '')) {
        _navigateToRegister();
      } else {
        final success = await authRepository.refreshToken();
        if (success) {
          logger.d('User token refreshed successfully');
          _refreshCompleter?.complete();
        } else {
          logger.e('Failed to refresh user token');
          _refreshCompleter?.completeError(UnauthorizedException());
          _navigateToRegister();
          throw UnauthorizedException();
        }
      }
    } catch (e, s) {
      logger.e('Error during token refresh: $e', error: e, stackTrace: s);
      _refreshCompleter?.completeError(e);
      _navigateToRegister();
      throw UnauthorizedException();
    } finally {
      _refreshCompleter = null;
    }
  }

  void _navigateToRegister() {
    cache.clear();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushAndRemoveUntil(
        navigatorKey.currentState!.context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
        (route) => false,
      );
    });
  }

  Future<dynamic> _handleRequest(Future<Response> Function() request) async {
    log('Refresh_____$_token');
    try {
      if (isTokenExpired(_token ?? "")) {
        print("Try to refresh");

        await _refreshToken();
      }
      final response = await request();
      return response.data;
    } on DioException catch (e) {
      print(e);
      if (e.response?.statusCode == 401) {
        if (kDebugMode) {
          logger.d('Token expired. Refreshing token...');
        }
        try {
          await _refreshToken();
          final response = await request();
          return response.data;
        } catch (e) {
          throw UnauthorizedException();
        }
      } else if (e.response?.statusCode == 502) {
        throw ServerFailure(e.response?.statusCode);
      }
      if (e.type == DioExceptionType.connectionError) {
        throw const ConnectionFailure();
      }

      if (kDebugMode) {
        logger.d([
          'Failed to make request:',
          e.response?.realUri.path,
          e.response?.data ?? e.message,
          e.response
        ]);
      }
      throw UnknownFailure(e.response?.statusCode);
    }
  }

  Future<dynamic> get(
    String path, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.get(
        baseUrl + path,
        cancelToken: cancelToken,
      );

      if (log && kDebugMode) {
        logger.d([
          'GET',
          path,
          response.statusCode,
          response.statusMessage,
          response.data,
        ]);
      }

      return response.data;
    } on DioException catch (e, s) {
      if (log && kDebugMode) {
        logger.e('GET request failed: $e', error: e, stackTrace: s);
      }
      rethrow;
    }
  }

  Future<dynamic> post(
    String path,
    Map<String, dynamic> body, {
    FormData? formData,
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.post(
        baseUrl + path,
        data: formData ?? body,
        cancelToken: cancelToken,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      if (log && kDebugMode) {
        logger.d([
          'POST',
          path,
          body,
          response.statusCode,
          response.statusMessage,
          response.data,
        ]);
      }

      return response.data;
    } on DioException catch (e, s) {
      if (log && kDebugMode) {
        logger.e('POST request failed: $e', error: e, stackTrace: s);
      }
      rethrow;
    }
  }

  Future<dynamic> getWithAuth(
    String path, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.get(
          baseUrl + path,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'GET',
            path,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }
        print("RESPONSE -> $response");
        print("REQUEST -> $baseUrl$path");
        return response;
      },
    );
  }

  Future<dynamic> getWithAuthMap(
    String path, {
    bool log = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? data,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.get(
          data: data,
          baseUrl + path,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'GET',
            path,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }
        return response;
      },
    );
  }

  Future<dynamic> postWithF(String path, FormData fromData) async {
    return _handleRequest(
      () async {
        final response = await dio.post(
          baseUrl + path,
          data: fromData,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );
        return response;
      },
    );
  }

  Future<dynamic> postWithAuth(
    String path,
    Map<String, dynamic> body, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.post(
          baseUrl + path,
          data: body,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'POST',
            path,
            body,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }

        return response;
      },
    );
  }

  Future<dynamic> uploadFile(
      FormData formData, Function(int persentage) onProgress) async {
    return _handleRequest(() async {
      final response = await dio.post(
        'https://api.fitrat.sector-soft.ru/upload/',
        data: formData,
        onSendProgress: (sent, total) {
          onProgress(((total / sent) * 100).toInt());
        },
      );
      return response;
    });
  }

  Future<dynamic> putWithAuth(
    String path,
    Map<String, dynamic> body, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.put(
          baseUrl + path,
          data: body,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'PUT',
            path,
            body,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }

        return response;
      },
    );
  }

  Future<dynamic> putWithAuthList({
    required String path,
    required List<dynamic> body,
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.put(
          baseUrl + path,
          data: body,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'PUT',
            path,
            body,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }

        return response;
      },
    );
  }

  Future<dynamic> patchWithAuth(
    String path,
    Map<String, dynamic> body, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.patch(
          baseUrl + path,
          data: body,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'PATCH',
            path,
            body,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }

        return response;
      },
    );
  }

  Future<dynamic> deleteWithAuth(
    String path, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    return _handleRequest(
      () async {
        final response = await dio.delete(
          baseUrl + path,
          cancelToken: cancelToken,
          options: Options(
            headers: {
              'Authorization': 'Bearer $_token',
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

        if (log && kDebugMode) {
          logger.d([
            'DELETE',
            path,
            response.statusCode,
            response.statusMessage,
            response.data,
          ]);
        }

        return response;
      },
    );
  }

  Future<Response> download(
      {required String path, required String savingPath}) async {
    return dio.download(path, savingPath,
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ), onReceiveProgress: (progress, _) {
      print(progress);
    });
  }
}

final requestHelper = RequestHelper();

class DurationLoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra['startTime'] = DateTime.now();
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final startTime = response.requestOptions.extra['startTime'] as DateTime?;
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      debugPrint(
          'Request to ${response.requestOptions.path} took ${duration.inMilliseconds} ms');
    }
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final startTime = err.requestOptions.extra['startTime'] as DateTime?;
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      debugPrint(
          'Request to ${err.requestOptions.path} failed after ${duration.inMilliseconds} ms');
    }
    return handler.next(err);
  }
}
