import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_phone_field.dart';
import '../repository/login_repository.dart';
import 'code_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String phoneNumber = "";

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
                                  "Parolni unutdingizmi?",
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
                                "Biz parolingizni tiklashga yordam beramiz, iltimos telefon raqamingizni kiriting",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff70707B),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: "Outfit",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: CustomPhoneField(
                                onChange: (value) => setState(() => phoneNumber = value),
                                validatorText: "Telefon raqamni kiriting",
                                labelText: "Telefon raqam",
                                isInLogin: true,
                              ),
                            ),
                            Padding(
                                padding:
                                const EdgeInsets.only(left: 16, right: 16, top: 16),
                                child: CustomButton(
                                    isEnabled: phoneNumber.length == 12,
                                    text: "Davom etish",
                                    onPressed: () async {
                                      try {
                                        final result = await authRepository.sendCode(phone: "+$phoneNumber");
                                        if (result != null) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => CodeScreen(phone: phoneNumber,)),
                                          );
                                        } else {
                                        }
                                      } catch (e) {
                                      }
                                    }
                                )
                            )
                          ]
                      )
                  )
              )
            ]
        )
    );
  }
}