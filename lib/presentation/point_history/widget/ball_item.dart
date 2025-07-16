import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BallItem extends StatelessWidget {
  final String reason;
  final String date;
  final String pointText;
  final String svgAsset;

  const BallItem({
    super.key,
    required this.reason,
    required this.date,
    required this.pointText,
    required this.svgAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
          left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
          right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
          bottom: BorderSide(color: Color(0xFFE5E7EB), width: 5),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Circular Icon
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xFFFFF8EC),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(svgAsset),
          ),
          const SizedBox(width: 12),
          // Texts
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reason,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9DA4AE),
                      ),
                    ),
                    Text(
                      "$pointText point",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF35B26A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
