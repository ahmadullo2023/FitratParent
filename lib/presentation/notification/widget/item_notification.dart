import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class ItemNotification extends StatefulWidget {
  final String comment;
  final String date;
  final bool showDot;
  final VoidCallback onTap;

  const ItemNotification({
    super.key,
    required this.comment,
    required this.date,
    required this.showDot,
    required this.onTap,
  });

  @override
  State<ItemNotification> createState() => _ItemNotificationState();
}

class _ItemNotificationState extends State<ItemNotification> {
  late bool _showDot;

  @override
  void initState() {
    super.initState();
    _showDot = widget.showDot;
  }

  void _handleTap() {
    if (_showDot) {
      setState(() {
        _showDot = false;
      });
    }
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF9FAFB),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: _handleTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border(
              top: BorderSide(width: 1.5, color: const Color(0xFFF3F4F6)),
              left: BorderSide(width: 1.5, color: const Color(0xFFF3F4F6)),
              right: BorderSide(width: 1.5, color: const Color(0xFFF3F4F6)),
              bottom: BorderSide(width: 3, color: const Color(0xFFF3F4F6)),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      border: Border.all(color: AppColors.emerald100, width: 1.5),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppIcons.notifications),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                widget.comment,
                                style: const TextStyle(
                                  fontFamily: "outfitMedium",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1F2A37),
                                ),
                              ),
                            ),
                            if (_showDot)
                              Container(
                                width: 8,
                                height: 8,
                                margin: const EdgeInsets.only(left: 8, top: 2),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.date,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6C737F),
                            fontFamily: "outfitMedium",
                          ),
                        ),
                      ],
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
