import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/hive/hive_helper.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../main/pages/main_page.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_password_field.dart';
import '../../widgets/custom_phone_field.dart';
import '../bloc/login_bloc.dart';
import 'forgot_password_screen.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final bloc = LoginBloc();
  String phoneNumber = "";
  String password = "";

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  void showTopFlushBar(BuildContext context, String message) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.white,
      margin: const EdgeInsets.all(12),
      borderRadius: BorderRadius.circular(12),
      duration: const Duration(seconds: 3),
      icon: const Icon(Icons.error_outline, color: Colors.red),
      messageText: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(


          listener: (context, state) {
            if (state.status == LoginStatus.success) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HolderScreen()),
              );
              HiveHelper.setLoggedIn(true);
            } else if (state.status == LoginStatus.error) {
              showTopFlushBar(
                context,
                    "Login muvaffaqiyatsiz tugadi. Iltimos, ma'lumotlarni tekshirib qayta urinib ko'ring.",
              );
            }
          },


          builder: (context, state) {
            return Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(AppIcons.logo2),
                          const SizedBox(height: 16),
                          const Text(
                            'Xush kelibsiz!',
                            style: TextStyle(
                              color: Color(0xFF35B26A),
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomPhoneField(
                              onChange: (value) =>
                                  setState(() => phoneNumber = value),
                              validatorText: "Telefon raqamni kiriting",
                              labelText: "Telefon raqam",
                              isInLogin: true,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomPasswordField(
                              onChange: (value) =>
                                  setState(() => password = value),
                              validatorText: "Parolni kiriting",
                              labelText: "Parol",
                            ),
                          ),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const ForgotPasswordScreen()),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Parolni unutdingizmi?",
                                  style: TextStyle(
                                      color: AppColors.emerald500,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CustomButton(
                              text: state.status == LoginStatus.loading
                                  ? ""
                                  : "Kirish",
                              onPressed: state.status == LoginStatus.loading
                                  ? null
                                  : () {
                                      bloc.add(
                                          LoginUser(phoneNumber, password));
                                    },
                              child: state.status == LoginStatus.loading
                                  ? const CupertinoActivityIndicator(
                                      radius: 12,
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
