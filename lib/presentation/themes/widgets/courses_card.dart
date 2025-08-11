import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_assets.dart';

class CourseProgressCard extends StatelessWidget {
  final Color color;
  final String subject;
  final String name;
  final double percentage;
  final double stars;
  final double lightnings;

  const CourseProgressCard({
    super.key,
    required this.color,
    required this.subject,
    required this.name,
    required this.percentage,
    required this.lightnings,
    required this.stars
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.book,
                    color: color,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Stack(
              children: [
                // Background bar
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                // Foreground/fill bar
                LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      height: 6,
                      width: constraints.maxWidth * (percentage / 100),
                      decoration: BoxDecoration(
                        color: const Color(0xff6C737F),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FAFB),
                    border: const Border(
                      top: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
                      left: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
                      right: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
                      bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.star),
                      const SizedBox(width: 6),
                      const Text(
                        '100',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFF830C),
                        ),
                      ),
                      const SizedBox(width: 8)
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FAFB),
                    border: const Border(
                      top: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
                      left: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
                      right: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
                      bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.lightning),
                      const SizedBox(width: 6),
                      const Text(
                        '8',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF55555),
                        ),
                      ),
                      const SizedBox(width: 8,)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
