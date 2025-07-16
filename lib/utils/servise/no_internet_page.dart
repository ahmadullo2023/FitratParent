import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fitrat_parent2/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class NoInternetPage extends StatefulWidget {
  const NoInternetPage({super.key});

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  bool _isChecking = false;

  Future<void> _tryAgain() async {
    setState(() {
      _isChecking = true;
    });

    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnected = connectivityResult != ConnectivityResult.none;

    bool hasRealInternet = false;

    if (isConnected) {
      try {
        final response =
            await http.get(Uri.parse('https://www.google.com')).timeout(
                  const Duration(seconds: 3),
                );
        if (response.statusCode == 200) {
          hasRealInternet = true;
        }
      } catch (_) {
        hasRealInternet = false;
      }
    }

    setState(() {
      _isChecking = false;
    });

    if (hasRealInternet && mounted) {
      Navigator.of(context).popUntil((route) => route.isFirst);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset("assets/icons/23.svg"),
            const SizedBox(height: 16),
            const Text(
              "Internet aloqasi yo’q",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF1F2A37),
                  fontWeight: FontWeight.w600),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
              child: Text(
                "WiFi tarmog‘i yoki internetga ulanganlikni tekshiring",
                style: TextStyle(color: Color(0xFF6C737F)),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: CustomButton(
                text: _isChecking ? "Tekshirilmoqda..." : "Qayta yuklash",
                onPressed: _isChecking ? null : _tryAgain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
