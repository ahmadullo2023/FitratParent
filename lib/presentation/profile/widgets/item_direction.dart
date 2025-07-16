import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_assets.dart';

class ItemDirections extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const ItemDirections({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          // Image container
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  imageUrl,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Title and Description
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9DA4AE),
                  ),
                ),
              ],
            ),
          ),

          // Right arrow icon (iOS style)
          const Icon(
            CupertinoIcons.right_chevron,
            size: 20,
            color: Color(0xFF9DA4AE),
          ),
        ],
      ),
    );
  }
}
