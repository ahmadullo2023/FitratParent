import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../screens/no_internet.dart';

class ConnectivityWrapper extends StatefulWidget {
  final Widget child;

  const ConnectivityWrapper({super.key, required this.child});

  @override
  State<ConnectivityWrapper> createState() => _ConnectivityWrapperState();
}

class _ConnectivityWrapperState extends State<ConnectivityWrapper> {
  bool isConnected = true;

  @override
  void initState() {
    super.initState();
    _checkInitialConnectivity();
  }

  Future<void> _checkInitialConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      isConnected = connectivityResult.first != ConnectivityResult.none;
    });
  }

  Future<void> _retryConnection() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      isConnected = connectivityResult.first != ConnectivityResult.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ConnectivityResult>>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final connectivityResult = snapshot.data!.first;
          isConnected = connectivityResult != ConnectivityResult.none;
        }

        if (!isConnected) {
          return NoInternetScreen(
            onRetry: _retryConnection,
          );
        }

        return widget.child;
      },
    );
  }
}
