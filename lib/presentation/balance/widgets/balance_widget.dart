import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_assets.dart';

class BalanceWidget extends StatelessWidget {
  final String balance;
  final VoidCallback onTap;

  const BalanceWidget({
    super.key,
    required this.balance,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Balans",
            style: TextStyle(
              color: Color(0xFF9DA4AE),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$balance ",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(
                  text: "uzs",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F6),
                border: Border.all(
                  color: const Color(0xFFE0F8E9),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFE0F8E9),
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.add,
                    color: Colors.black,
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    "To‘ldirish",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0D121C),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
