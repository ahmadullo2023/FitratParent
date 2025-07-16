import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemResult extends StatelessWidget {
  final String svgAsset;
  final String count;
  final String label;

  const ItemResult({
    super.key,
    required this.svgAsset,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xffF9FAFB),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            svgAsset,
            width: 24,
            height: 24,
          ),
          Text(
            count,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF9DA4AE),
            ),
          ),
        ],
      ),
    );
  }
}
