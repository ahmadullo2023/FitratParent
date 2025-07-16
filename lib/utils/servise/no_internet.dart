import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'no_internet_page.dart';

class InternetChecker {
  static final InternetChecker _instance = InternetChecker._internal();
  factory InternetChecker() => _instance;
  InternetChecker._internal();

  final Connectivity _connectivity = Connectivity();
  late final StreamSubscription<List<ConnectivityResult>> _subscription;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  bool _isNoInternetShown = false;

  void initialize() {
    _subscription = _connectivity.onConnectivityChanged.listen((results) {
      final hasInternet = results.isNotEmpty &&
          !results.contains(ConnectivityResult.none);

      if (!hasInternet && !_isNoInternetShown) {
        _isNoInternetShown = true;
        navigatorKey.currentState?.push(
          MaterialPageRoute(builder: (_) => const NoInternetPage()),
        );
      } else if (hasInternet && _isNoInternetShown) {
        _isNoInternetShown = false;
        navigatorKey.currentState?.popUntil((route) => route.isFirst);
      }
    });
  }

  void dispose() {
    _subscription.cancel();
  }
}
