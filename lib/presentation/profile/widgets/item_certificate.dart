import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_assets.dart';

class ItemCertification extends StatelessWidget {
  final String name;
  final String status;
  final double percentage;

  const ItemCertification({
    super.key,
    required this.name,
    required this.status,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: const Border(
          top: BorderSide(color: Color(0xFFE5E7EB), width: 2),
          left: BorderSide(color: Color(0xFFE5E7EB), width: 2),
          right: BorderSide(color: Color(0xFFE5E7EB), width: 2),
          bottom: BorderSide(color: Color(0xFFE5E7EB), width: 5),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.certificate,
            width: 48,
            height: 48,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  status,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9DA4AE),
                  ),
                ),
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
                  valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff9C64E8)),
                ),
                Text(
                  "${percentage.toInt()}%",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff9C64E8),
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
