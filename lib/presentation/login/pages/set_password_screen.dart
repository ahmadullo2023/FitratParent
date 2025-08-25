import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_password_field.dart';
import '../repository/login_repository.dart';
import 'login_screen.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key, required this.code, required this.phone});

  final String code;
  final String phone;

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  String password = "";
  String newPassword = "";

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
                        "Yangi parol o’rnatish",
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
                      "Endi siz yangi parol o’rnatishingiz mumkin va ishonchli parol o’ylab toping",
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
                    child: CustomPasswordField(
                      validatorText: "Yangi parol kiriting",
                      labelText: "Yangi parol",
                      onChange: (value) => setState(() => password = value),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomPasswordField(
                      validatorText: "Yangi parolni tasdiqlang",
                      labelText: "Yangi parolni tasdiqlang",
                      onChange: (value) => setState(() => newPassword = value),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: CustomButton(
                      isEnabled: password.isNotEmpty && password == newPassword,
                      text: "Parolni o‘zgartirish",
                      onPressed: () async {
                        try {
                          final result = await authRepository.setPassword(
                              phoneNumber: "+${widget.phone}",
                              confirmationCode: widget.code,
                              newPassword: password);

                          if (result != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          }
                        } catch (e) {
                          print("xatolik ==> $e");
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
