import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomStatWidget extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final Color color;
  final bool isTime;

  const CustomStatWidget({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.isTime = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: const Color(0xFFE5E7EB), width: 3),
          left: BorderSide(color: const Color(0xFFE5E7EB), width: 3),
          right: BorderSide(color: const Color(0xFFE5E7EB), width: 3),
          bottom: BorderSide(color: const Color(0xFFE5E7EB), width: 6),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Top-left icon
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  icon ,
                  height: 24,
                  width: 24,

                ),
              ),
            ),
          ),
          // Bottom-left title + description
          Positioned(
            bottom: 0,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: description,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: isTime ? "soat" : "ta",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
