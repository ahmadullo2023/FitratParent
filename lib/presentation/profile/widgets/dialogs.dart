import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void showConfirmDialog({
  required BuildContext context,
  required String title,
  required String description,
  required String confirmButtonText,
  required VoidCallback onConfirm,
  bool isDestructive = true,
}) {
  final Color confirmColor = isDestructive ? const Color(0xFFF55555) : const Color(0xFF35B26A);
  final Color confirmBorderColor = isDestructive ? const Color(0xFFE12121) : const Color(0xFF269354);
  final Color confirmTextColor = const Color(0xFFF9FAFB);

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF9DA4AE),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Cancel
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 40,
                    width: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      border: Border.all(color: const Color(0xFFE5E7EB), width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [BoxShadow(color: Color(0xFFE5E7EB), offset: Offset(0, 3))],
                    ),
                    child: const Text(
                      "Ortga",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0D121C),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Confirm
                GestureDetector(
                  onTap: onConfirm,
                  child: Container(
                    height: 40,
                    width: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: confirmColor,
                      border: Border.all(color: confirmBorderColor, width: 1.5),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: confirmBorderColor, offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Text(
                      confirmButtonText,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: confirmTextColor,
                      ),
                    ),
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

