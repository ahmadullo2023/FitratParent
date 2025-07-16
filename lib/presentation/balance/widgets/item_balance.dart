import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_assets.dart';

class ItemBalance extends StatelessWidget {
  final bool isIncreasing;
  final String reason;
  final String description;
  final String balance;
  final String date;

  const ItemBalance({
    super.key,
    required this.isIncreasing,
    required this.reason,
    required this.description,
    required this.balance,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        isIncreasing ? Color(0xFFF1FCF6) : Color(0xFFFEF2F2);
    final sign = isIncreasing ? "+" : "-";

    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(
              isIncreasing ? AppIcons.income : AppIcons.expense,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            reason,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0D121C),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )),
                    ),
                    Text(
                      "$sign$balance uzs",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D121C),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9DA4AE),
                        ),
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9DA4AE),
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
