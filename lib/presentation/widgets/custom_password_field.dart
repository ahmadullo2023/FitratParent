import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/theme.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    this.onChange,
    this.labelText,
    this.prefixIcon,
    this.validatorText,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.readOnly = false,
    this.onTap,
    this.textInputType,
    this.focusNode,
    this.onFieldSubmitted,
  });

  final Function(String value)? onChange;
  final String? labelText;
  final String? prefixIcon;
  final String? validatorText;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final String? initialValue;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String)? onFieldSubmitted;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  late TextEditingController _controller;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty) ...[
          Text(
            widget.labelText!,
            style: const TextStyle(
              color: Color(0xFF0D121C),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
        ],
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(12),
            border: const Border(
              top: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
              left: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
              right: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
              bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
            ),
          ),
          child: TextFormField(
            controller: _controller,
            obscureText: _obscureText,
            readOnly: widget.readOnly,
            focusNode: widget.focusNode,
            onTap: widget.onTap,
            onFieldSubmitted: widget.onFieldSubmitted,
            onChanged: widget.onChange,
            keyboardType: widget.textInputType ?? TextInputType.visiblePassword,
            textInputAction: widget.textInputAction ?? TextInputAction.done,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            validator: (_) {
              if ((_controller.text.isEmpty || _controller.text.length < 6) &&
                  widget.validatorText != null) {
                return widget.validatorText;
              }
              return null;
            },
            decoration: InputDecoration(
              isDense: true,
              counterText: '',
              hintText: widget.validatorText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 16, bottom: 16, left: 12),
              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Color(0xff9DA4AE),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              errorStyle: const TextStyle(fontSize: 12),
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                  colorFilter: ColorFilter.mode(
                    widget.preIconColor ?? AppColors.grey1,
                    BlendMode.srcIn,
                  ),
                  height: 20,
                ),
              )
                  : null,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.black,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.onChange,
    this.labelText,
    this.prefixIcon,
    this.validatorText,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.readOnly = false,
    this.onTap,
    this.textInputType,
    this.focusNode,
    this.onFieldSubmitted,
    this.hintText,
  });

  final TextEditingController? controller;
  final Function(String value)? onChange;
  final String? labelText;
  final String? prefixIcon;
  final String? validatorText;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final String? initialValue;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String)? onFieldSubmitted;
  final String? hintText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController _internalController;
  bool _shouldDisposeController = false;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _internalController = widget.controller!;
    } else {
      _internalController = TextEditingController(text: widget.initialValue);
      _shouldDisposeController = true;
    }
  }

  @override
  void dispose() {
    if (_shouldDisposeController) {
      _internalController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty) ...[
          Text(
            widget.labelText!,
            style: const TextStyle(
              color: Color(0xFF0D121C),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
        ],
        Container(
          decoration: BoxDecoration(
            color: widget.fillColor ?? const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(12),
            border: const Border(
              top: BorderSide(color: Color(0xffE5E7EB), width: 1.5),
              left: BorderSide(color: Color(0xffE5E7EB), width: 1.5),
              right: BorderSide(color: Color(0xffE5E7EB), width: 1.5),
              bottom: BorderSide(color: Color(0xffE5E7EB), width: 3),
            ),
          ),
          child: TextFormField(
            controller: _internalController,
            readOnly: widget.readOnly,
            focusNode: widget.focusNode,
            onTap: widget.onTap,
            onFieldSubmitted: widget.onFieldSubmitted,
            onChanged: widget.onChange,
            keyboardType: widget.textInputType ?? TextInputType.text,
            textInputAction: widget.textInputAction ?? TextInputAction.done,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            validator: (_) {
              if ((_internalController.text.isEmpty || _internalController.text.length < 2) &&
                  widget.validatorText != null) {
                return widget.validatorText;
              }
              return null;
            },
            decoration: InputDecoration(
              isDense: true,
              counterText: '',
              hintText: widget.hintText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 16, bottom: 16, left: 12),
              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: const Color(0xff9DA4AE),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              errorStyle: const TextStyle(fontSize: 12),
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                  colorFilter: ColorFilter.mode(
                    widget.preIconColor ?? AppColors.grey1,
                    BlendMode.srcIn,
                  ),
                  height: 20,
                ),
              )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}


