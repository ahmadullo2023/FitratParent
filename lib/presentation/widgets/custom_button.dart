import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_colors.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final String icon;
  final VoidCallback? onPressed;
  final Widget? child;
  final double height;
  final bool isEnabled;
  final String? fontFamily;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon = "",
    this.child,
    this.height = 52,
    this.isEnabled = true,
    this.fontFamily,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final textColor = widget.isEnabled
        ? Colors.white
        : Colors.grey.shade500;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        gradient: widget.isEnabled
            ? LinearGradient(
          colors: _isPressed
              ? [AppColors.emerald600, AppColors.emerald600]
              : [AppColors.emerald500, AppColors.emerald500],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
            : LinearGradient(
          colors: [Colors.grey.shade200, Colors.grey.shade200],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border(
          top: BorderSide(
              color: widget.isEnabled
                  ? AppColors.emerald600
                  : Colors.black.withValues(alpha: 0.1),
              width: widget.isEnabled ? 1.5 : 1),
          left: BorderSide(
              color: widget.isEnabled
                  ? AppColors.emerald600
                  : Colors.black.withValues(alpha: 0.1),
              width: widget.isEnabled ? 1.5 : 1),
          right: BorderSide(
              color: widget.isEnabled
                  ? AppColors.emerald600
                  : Colors.black.withValues(alpha: 0.1),
              width: widget.isEnabled ? 1.5 : 1),
          bottom: BorderSide(
              color: widget.isEnabled
                  ? AppColors.emerald600
                  : Colors.black.withValues(alpha: 0.1),
              width: widget.isEnabled
                  ? (_isPressed ? 1.5 : 3)
                  : 1.5),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTapDown: widget.isEnabled ? (_) => setState(() => _isPressed = true) : null,
          onTapUp: widget.isEnabled ? (_) => setState(() => _isPressed = false) : null,
          onTapCancel: widget.isEnabled ? () => setState(() => _isPressed = false) : null,
          onTap: widget.isEnabled ? widget.onPressed : null,
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Transform.translate(
            offset: _isPressed && widget.isEnabled
                ? const Offset(0, 1)
                : const Offset(0, 0),
            child: Container(
              width: double.infinity,
              height: widget.height,
              alignment: Alignment.center,
              child: widget.child ??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.icon.isNotEmpty) ...[
                        SvgPicture.asset(
                          widget.icon,
                          width: 24,
                          height: 24,
                          colorFilter: ColorFilter.mode(
                            textColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        widget.text,
                        style: widget.fontFamily != null
                            ? TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: widget.fontFamily,
                        )
                            : TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
            ),
          ),
        ),
      ),
    );
  }
}