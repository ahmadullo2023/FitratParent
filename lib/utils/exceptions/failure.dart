import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

final class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException({this.message = 'unauthorized'});

  @override
  String toString() {
    return message;
  }
}

abstract class LocalizedMessage {
  String getLocalizedMessage(BuildContext context);
}

abstract class Failure extends Equatable implements LocalizedMessage {
  const Failure();

  @override
  List<Object> get props => [];
}

class EmptyFailure extends Failure {
  const EmptyFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => '';
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(this.statusCode) : super();

  @override
  List<Object> get props => [statusCode ?? 0];

  @override
  String getLocalizedMessage(BuildContext context) =>
      '${S.of(context).serverError} $statusCode';
}

class ConnectionFailure extends Failure {
  const ConnectionFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => "Internet ulanmagan";
}

class UnknownFailure extends Failure {
  final int? statusCode;

  const UnknownFailure(this.statusCode) : super();

  @override
  List<Object> get props => [statusCode ?? 0];

  @override
  String getLocalizedMessage(BuildContext context) =>
      S.of(context).unexpectedError;
}

class GeneralFailure extends Failure {
  const GeneralFailure(this.error) : super();
  final String error;

  @override
  String getLocalizedMessage(BuildContext context) => error;
}

class UnAuthorizationFailure extends Failure {
  const UnAuthorizationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      "Un Authorization Failure";
}

class CacheFailure extends Failure {
  const CacheFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Cache failure';
}

class EmailPasswordWrongFailure extends Failure {
  const EmailPasswordWrongFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => "Email or Password wrong";
}

class UserNotFound extends Failure {
  const UserNotFound() : super();

  @override
  String getLocalizedMessage(BuildContext context) => "strUserNotfound";
}

class WrongCodeFailure extends Failure {
  const WrongCodeFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => "strWrongCode";
}
