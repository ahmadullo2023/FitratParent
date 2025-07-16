import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class PointsWidget extends StatelessWidget {
  final bool isPoint;
  final int coins;
  final int percentage;
  final VoidCallback? onTap;

  const PointsWidget({
    super.key,
    required this.isPoint,
    this.coins = 0,
    this.percentage = 0,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 72,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: const Border(
              top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
              left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
              right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
              bottom: BorderSide(color: Color(0xFFE5E7EB), width: 4),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF8EC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    isPoint ? AppIcons.coin : AppIcons.progress,
                    height: 24,
                    width: 24,
                    color: Colors.orange, // Or change as needed
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isPoint ? "$coins" : "$percentage%",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  // const SizedBox(height: 4),
                  Text(
                    isPoint ? "Coins" : "O'zlashtirish",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
