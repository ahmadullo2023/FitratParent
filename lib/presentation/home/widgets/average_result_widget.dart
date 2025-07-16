import 'package:flutter/material.dart';

class AverageResultWidget extends StatelessWidget {
  final double percentage;

  const AverageResultWidget({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: const Color(0xFFE5E7EB), width: 3),
          left: BorderSide(color: const Color(0xFFE5E7EB), width: 3),
          right: BorderSide(color: const Color(0xFFE5E7EB), width: 3),
          bottom: BorderSide(color: const Color(0xFFE5E7EB), width: 6),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Left Texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "O’rtacha o’zlashtirish",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: percentage % 1 == 0
                            ? percentage.toInt().toString()
                            : percentage.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "%",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff0D121C),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
          SizedBox(
            height: 60,
            width: 60,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  strokeCap: StrokeCap.round,
                  value: percentage / 100,
                  strokeWidth: 6,
                  backgroundColor: const Color(0xFFE5E7EB),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xff35B26A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}