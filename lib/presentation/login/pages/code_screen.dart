import 'package:fitrat_parent2/presentation/login/pages/set_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sms_autofill/sms_autofill.dart';
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

class _CodeScreenState extends State<CodeScreen> with CodeAutoFill {
  List<String> code1 = ["", "", "", "", ""];
  List<TextEditingController> controllers = List.generate(5, (_) => TextEditingController());

  @override
  void initState() {
    super.initState();
    listenForCode();
    _printAppSignature();
  }

  Future<void> _printAppSignature() async {
    String signature = await SmsAutoFill().getAppSignature;
    debugPrint("📲 App Signature: $signature");
  }

  @override
  void codeUpdated() {
    if (code1.length >= 5) {
      for (int i = 0; i < 5; i++) {
        controllers[i].text = code1[i];
      }
      setState(() {});
    }
  }

  @override
  void dispose() {
    cancel();
    for (final c in controllers) {
      c.dispose();
    }
    super.dispose();
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
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Kodni kiriting",
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: "Outfit",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0, left: 16, right: 16),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: SizedBox(
                          width: 52,
                          height: 52,
                          child: TextField(
                            controller: controllers[index],
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9DA4AE),
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              filled: true,
                              fillColor: const Color(0xffF9FAFB),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Color(0xffF3F4F6), width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Color(0xffF3F4F6), width: 3),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                code1[index] = value;
                                if (value.isNotEmpty && index < 4) {
                                  FocusScope.of(context).nextFocus();
                                }
                              });
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: CustomButton(
                      isEnabled: controllers
                          .every((controller) => controller.text.isNotEmpty),
                      text: "Tasdiqlash",
                      onPressed: () async {
                        try {
                          final result = await authRepository.confirmCode(
                            phone: "+${widget.phone}",
                            code: controllers.map((c) => c.text).join(),
                          );
                          if (result != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SetPasswordScreen(
                                  code: controllers.map((c) => c.text).join(),
                                  phone: widget.phone,
                                ),
                              ),
                            );
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
                              content: const Row(
                                children: [
                                  Icon(Icons.error_outline, color: Colors.red),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      "Code notog'ri tekshirib qaytadan tering",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              duration: Duration(seconds: 3),
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






// import 'package:fitrat_parent2/presentation/login/pages/set_password_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../../../utils/app_assets.dart';
// import '../../../utils/app_colors.dart';
// import '../../widgets/custom_button.dart';
// import '../repository/login_repository.dart';
//
// class CodeScreen extends StatefulWidget {
//   const CodeScreen({super.key, required this.phone});
//
//   final String phone;
//
//   @override
//   State<CodeScreen> createState() => _CodeScreenState();
// }
//
// class _CodeScreenState extends State<CodeScreen> {
//   List<String> code = ["", "", "", "", ""];
//   List<TextEditingController> controllers =
//       List.generate(5, (_) => TextEditingController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 112,
//                     height: 112,
//                     decoration: BoxDecoration(
//                       color: AppColors.emerald50,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Center(
//                       child: SvgPicture.asset(
//                         AppIcons.illustration,
//                         width: 64,
//                         height: 64,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Center(
//                       child: Text(
//                         "Kodni kiriting",
//                         style: TextStyle(
//                             color: AppColors.black,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 24,
//                             fontFamily: "Outfit"),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(bottom: 8.0, left: 16, right: 16),
//                     child: Text(
//                       "Biz sizga sms orqali kod yubordik, iltimos kodni kiriting",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Color(0xff70707B),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 16,
//                         fontFamily: "Outfit",
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(5, (index) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 6),
//                         child: SizedBox(
//                           width: 52,
//                           height: 52,
//                           child: TextField(
//                             controller: controllers[index],
//                             maxLength: 1,
//                             textAlign: TextAlign.center,
//                             keyboardType: TextInputType.number,
//                             style: const TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                               color: Color(0xff9DA4AE),
//                             ),
//                             decoration: InputDecoration(
//                               counterText: "",
//                               filled: true,
//                               fillColor: Color(0xffF9FAFB),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                     color: Color(0xffF3F4F6), width: 1.5),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                                 borderSide: const BorderSide(
//                                     color: Color(0xffF3F4F6), width: 3),
//                               ),
//                             ),
//                             onChanged: (value) {
//                               setState(() {
//                                 code[index] =
//                                     value; // Update the code list with the entered value
//                                 if (value.isNotEmpty && index < 4) {
//                                   FocusScope.of(context)
//                                       .nextFocus(); // Move to next field if not the last
//                                 }
//                               });
//                             },
//                           ),
//                         ),
//                       );
//                     }),
//                   ),
//                   const SizedBox(height: 24),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 16, right: 16, top: 16),
//                     child: CustomButton(
//                       isEnabled: controllers[4].text.isNotEmpty,
//                       text: "Tasdiqlash",
//                       onPressed: () async {
//                         try {
//                           final result = await authRepository.confirmCode(
//                               phone: "+${widget.phone}", code: code.join());
//                           if (result != null) {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SetPasswordScreen(
//                                         code: code.join(),
//                                         phone: widget.phone)));
//                           }
//                         } catch (e) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               behavior: SnackBarBehavior.floating,
//                               backgroundColor: Colors.white,
//                               elevation: 4,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               content: Row(
//                                 children: [
//                                   const Icon(Icons.error_outline,
//                                       color: Colors.red),
//                                   const SizedBox(width: 12),
//                                   const Expanded(
//                                     child: Text(
//                                       "Code notog'ri tekshirib qaytadan tering",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               duration: const Duration(seconds: 3),
//                             ),
//                           );
//                         }
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
