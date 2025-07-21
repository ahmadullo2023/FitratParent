import 'package:fitrat_parent2/presentation/login/pages/set_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../repository/login_repository.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key, required this.phone});

  final String phone;

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String _code = '';

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    final text = _controller.text;
    if (text.length <= 5) {
      setState(() {
        _code = text;
      });
    } else {
      // Prevent entering more than 5 digits
      _controller.text = _code;
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _code.length),
      );
    }
  }

  Widget _buildCodeField(int index) {
    final bool hasDigit = index < _code.length;
    final String digit = hasDigit ? _code[index] : '';
    final bool isFocused = _focusNode.hasFocus && index == _code.length;

    return GestureDetector(
      onTap: () {
        _focusNode.requestFocus();
        // Position cursor at the end of current code
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _code.length),
        );
      },
      child: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: const Color(0xffF9FAFB),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isFocused ? const Color(0xffF3F4F6) : const Color(0xffF3F4F6),
            width: isFocused ? 3 : 1.5,
          ),
        ),
        child: Center(
          child: Text(
            digit,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff9DA4AE),
              height: 1.0, // This helps with vertical centering
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 112,
                    height: 112,
                    decoration: BoxDecoration(
                      color: AppColors.emerald50,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppIcons.illustration,
                        width: 64,
                        height: 64,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "Kodni kiriting",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            fontFamily: "Outfit"),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8.0, left: 16, right: 16),
                    child: Text(
                      "Biz sizga sms orqali kod yubordik, iltimos kodni kiriting",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff70707B),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: "Outfit",
                      ),
                    ),
                  ),
                  // Hidden TextField for handling input
                  Opacity(
                    opacity: 0.0,
                    child: SizedBox(
                      width: 0.1,
                      height: 0.1,
                      child: TextField(
                        controller: _controller,
                        focusNode: _focusNode,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(5),
                        ],
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                  ),
                  // Visual representation of code fields
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: _buildCodeField(index),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: CustomButton(
                      isEnabled: _code.length == 5,
                      text: "Tasdiqlash",
                      onPressed: () async {
                        try {
                          final result = await authRepository.confirmCode(
                              phone: "+${widget.phone}", code: _code);
                          if (result != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SetPasswordScreen(
                                        code: _code, phone: widget.phone)));
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.white,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              content: Row(
                                children: [
                                  const Icon(Icons.error_outline,
                                      color: Colors.red),
                                  const SizedBox(width: 12),
                                  const Expanded(
                                    child: Text(
                                      "Kod notog'ri tekshirib qaytadan tering",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              duration: const Duration(seconds: 3),
                            ),
                          );
                        }
                      },
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
