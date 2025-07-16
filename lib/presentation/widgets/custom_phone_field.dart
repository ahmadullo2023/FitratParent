import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/theme.dart';

class CustomPhoneField extends StatefulWidget {
  const CustomPhoneField({
    super.key,
    this.controller,
    this.onChange,
    this.labelText,
    this.maxLines,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.validatorText,
    this.obscure,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.readOnly = false,
    this.onTap,
    this.textInputType,
    this.maxLength,
    this.focusNode,
    this.suffixIconOnTap,
    this.borderColor = AppColors.borderColor,
    this.onFieldSubmitted,
    this.isInLogin = false,
  });

  final TextEditingController? controller;
  final Function(String value)? onChange;
  final String? labelText;
  final String? prefixIcon;
  final String? suffixIcon;
  final bool? obscure;
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
  final bool isInLogin;

  @override
  State<CustomPhoneField> createState() => _CustomPhoneFieldState();
}

class _CustomPhoneFieldState extends State<CustomPhoneField> {
  late final TextEditingController _internalController;
  late final MaskTextInputFormatter _maskTextInputFormatter;
  bool _shouldDisposeController = false;
  final GlobalKey<FormFieldState> _fieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();

    _maskTextInputFormatter = MaskTextInputFormatter(
      mask: '(##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      initialText: widget.initialValue,
    );

    if (widget.controller != null) {
      _internalController = widget.controller!;
    } else {
      _internalController =
          TextEditingController(text: _maskTextInputFormatter.getMaskedText());
      _shouldDisposeController = true;
    }

    _internalController.addListener(() {
      if (_fieldKey.currentState?.hasError ?? false) {
        _fieldKey.currentState?.reset();
      }
    });
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
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(12),
            border: Border(
              top: BorderSide(color: widget.borderColor, width: 1.5),
              left: BorderSide(color: widget.borderColor, width: 1.5),
              right: BorderSide(color: widget.borderColor, width: 1.5),
              bottom: BorderSide(color: widget.borderColor, width: 3),
            ),
          ),
          child: TextFormField(
            key: _fieldKey,
            controller: _internalController,
            maxLines: widget.maxLines ?? 1,
            minLines: widget.minLines ?? 1,
            validator: (_) {
              if (_maskTextInputFormatter.getUnmaskedText().length != 9 &&
                  widget.validatorText != null) {
                return widget.validatorText;
              }
              return null;
            },
            readOnly: widget.readOnly,
            focusNode: widget.focusNode,
            inputFormatters: [_maskTextInputFormatter],
            onTap: widget.onTap,
            onFieldSubmitted: widget.onFieldSubmitted,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            obscureText: widget.obscure ?? false,
            textInputAction: widget.textInputAction ?? TextInputAction.next,
            keyboardType: widget.textInputType ?? TextInputType.phone,
            onChanged: (value) {
              widget.onChange
                  ?.call("998${_maskTextInputFormatter.getUnmaskedText()}");
            },
            cursorColor: AppColors.primaryColor,
            maxLength: widget.maxLength,
            decoration: InputDecoration(
              errorStyle: const TextStyle(fontSize: 12),
              counterText: '',
              isDense: true,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.black45,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(top: 14, bottom: 14, left: 12),
                child: Text(
                  "+998 ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9DA4AE),
                  ),
                ),
              ),
              suffixIcon: widget.suffixIcon == null
                  ? null
                  : Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                    onPressed: widget.suffixIconOnTap,
                    icon: SvgPicture.asset(
                      widget.suffixIcon ?? "",
                      height: 20,
                      colorFilter: ColorFilter.mode(
                        widget.preIconColor ?? AppColors.grey1,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

