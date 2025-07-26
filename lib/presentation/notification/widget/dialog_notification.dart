import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class ReadNotificationsDialog extends StatelessWidget {
  const ReadNotificationsDialog({
    super.key,
    this.textAlign = TextAlign.center,
    this.buttonText = "OK",
    this.buttonText2 = "YO'Q",
    required this.onClickOk,
  });

  final TextAlign textAlign;
  final String buttonText;
  final String buttonText2;
  final VoidCallback onClickOk;

  static Future<void> show(
      BuildContext context, {
        TextAlign textAlign = TextAlign.center,
        String buttonText = "OK",
        required VoidCallback onClickOk
      }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ReadNotificationsDialog(
          textAlign: textAlign,
          buttonText: buttonText,
          onClickOk: onClickOk,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 8,
      insetPadding: const EdgeInsets.symmetric(horizontal: 40.0),
      titlePadding: EdgeInsets.fromLTRB(24, 24, 24, 0),
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      title: Text(
        "Belgilash",
        style: theme.textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.onSurface,
        ),
        textAlign: TextAlign.center,
      ),
      content: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 300,
          maxWidth: 600,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hammasini o'qilgan qilib belgilang",
              textAlign: textAlign,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  buttonText2,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),
            10.horizontal,
            Expanded(
              child: FilledButton(
                onPressed: () {
                  onClickOk();
                  Navigator.pop(context);
                },
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.emerald500,
                  foregroundColor: theme.colorScheme.onPrimary,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  buttonText,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}