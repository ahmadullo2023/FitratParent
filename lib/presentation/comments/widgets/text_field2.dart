import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'dart:async';

import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class CustomTextField2 extends StatefulWidget {
  const CustomTextField2({
    super.key,
    this.hintText,
    this.onChange,
    this.labelText,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.validatorText,
    this.obscure = false,
    this.isObscure = false,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.textEditingController,
    this.readOnly = false,
    this.onTap,
    this.formatter,
    this.textInputType,
    this.maxLength,
    this.focusNode,
    this.suffixIconOnTap,
    this.borderColor = AppColors.borderColor,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.words,
    this.showRed = false,
    this.validator,
    this.suffixText,
    this.prefixText,
    this.isDebounce = true,
    this.isEnabled = true, // Added isEnabled field with default value true
  });

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;

  final String? labelText;
  final String? hintText;
  final String? prefixIcon;
  final String? suffixIcon;
  final String? suffixText;
  final String? prefixText;
  final bool? obscure;
  final bool isObscure;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final Color borderColor;
  final String? initialValue;
  final String? validatorText;
  final int? maxLines;
  final TextInputType? textInputType;
  final int? minLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function()? suffixIconOnTap;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? formatter;
  final TextCapitalization textCapitalization;
  final bool showRed;
  final FormFieldValidator<String>? validator;
  final bool isDebounce;
  final bool isEnabled;

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  late TextEditingController innerController;
  late bool isTextObscured;
  Timer? _debounceTimer;
  @override
  void didUpdateWidget(covariant CustomTextField2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_){
      if (widget.initialValue != oldWidget.initialValue &&
          widget.textEditingController == null) {
        innerController.text = widget.initialValue ?? "";
      }
    });

  }

  @override
  void initState() {
    innerController = widget.textEditingController ??
        TextEditingController(
          text: widget.initialValue,
        );
    isTextObscured = widget.isObscure;
    super.initState();
  }

  void _debounceOnChanged(String value) {
    if (widget.isDebounce) {
      _debounceTimer?.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 300), () {
        widget.onChange?.call(value);
      });
    } else {
      widget.onChange?.call(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.labelText != null && widget.labelText!.isNotEmpty) ...[
          Text(
            widget.labelText!,
            style: TextStyle(
              color: AppColors.grayDarker,
            ),
          ),
          12.vertical,
        ],
        TextFormField(
          maxLines: widget.isObscure ? 1 : (widget.maxLines ?? 1),
          minLines: widget.minLines ?? 1,
          validator: widget.validator ??
                  (_) {
                if (innerController.text.isEmpty == true &&
                    widget.validatorText != null) {
                  return widget.validatorText;
                }
                return null;
              },
          textCapitalization: widget.textCapitalization,
          readOnly: widget.readOnly,
          focusNode: widget.focusNode,
          inputFormatters: widget.formatter,
          onTap: widget.onTap,
          onFieldSubmitted: widget.onFieldSubmitted,
          enabled: widget.isEnabled,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w400,
          ),
          obscureText: isTextObscured,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          keyboardType: widget.textInputType,
          onChanged: _debounceOnChanged,
          controller: innerController,
          cursorColor: AppColors.primaryColor,
          maxLength: widget.maxLength,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            counterText: '',
            errorStyle: TextStyle(fontSize: 12),
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.buttonTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.grey3,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: widget.isObscure
                ? IconButton(
              onPressed: () {
                setState(
                      () {
                    isTextObscured = !isTextObscured;
                  },
                );
              },
              icon: SvgPicture.asset(
                isTextObscured
                    ? AppIcons.visibilityOff
                    : AppIcons.visibilityOn,
              ),
            )
                : widget.suffixIcon == null
                ? Text(
              widget.suffixText ?? "",
              style: TextStyle(
                  color: AppColors.primaryColor, fontSize: 14),
            ).marginSymmetric(horizontal: 10, vertical: 10)
                : IconButton(
              onPressed: widget.suffixIconOnTap,
              icon: SvgPicture.asset(
                widget.suffixIcon ?? "",
                height: 20,
              ),
            ),
            filled: true,
            isDense: true,
            fillColor: !widget.isEnabled
                ? AppColors.grayLight
                : (widget.fillColor ?? Colors.transparent),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: widget.showRed ? Colors.red : widget.borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: widget.showRed ? Colors.red : widget.borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: widget.showRed ? Colors.red : widget.borderColor,
                width: 1.2,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.red),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: widget.borderColor),
            ),
          ),
        ),
      ],
    );
  }
}
