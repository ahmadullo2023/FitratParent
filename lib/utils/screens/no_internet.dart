import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../presentation/widgets/custom_button.dart';
import '../app_assets.dart';

class NoInternetScreen extends StatelessWidget {
  final VoidCallback onRetry;

  const NoInternetScreen({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Centered content
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      AppIcons.noInternet,
                      height: 160,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Internet aloqasi yo’q",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0D121C),
                        fontFamily: 'outfitMedium',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "WIFI tarmog’i yoki internetga ulanganlikni tekshiring",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6C737F),
                        fontFamily: 'outfitMedium',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            // Bottom button
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton(
                  text: "Qayta urinish",
                  onPressed: onRetry,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
