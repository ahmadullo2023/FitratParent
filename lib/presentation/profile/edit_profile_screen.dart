import 'package:fitrat_parent2/presentation/profile/profile_screen.dart';
import 'package:fitrat_parent2/presentation/profile/widgets/dialogs.dart';
import 'package:fitrat_parent2/presentation/widgets/custom_button.dart';
import 'package:fitrat_parent2/presentation/widgets/custom_password_field.dart';
import 'package:fitrat_parent2/presentation/widgets/custom_phone_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../utils/app_assets.dart';
import '../main/bloc/main_bloc.dart';
import 'bloc/profile_bloc.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void initState() {
    context.read<ProfileBloc>().add(GetMeEvent());
    super.initState();
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool initialized = false;

  bool _isChanged(MainState state) {
    final student = state.studentModel;

    if (student == null) return false;

    final fullNameChanged = nameController.text != (student.name ?? '') ||
        lastNameController.text != (student.lastName ?? '');

    final phoneUnmasked = phoneMask.getUnmaskedText();
    final phoneChanged = phoneUnmasked != student.phone?.substring(3);

    return fullNameChanged || phoneChanged;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("bu bub ishladi");
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final student = state.studentModel;
        if (student != null && !initialized) {
          // nameController.text = student.name ?? '';
          lastNameController.text = student.lastName ?? '';
          final rawPhone = student.phone?.substring(4) ?? '';
          phoneMask.formatEditUpdate(
            const TextEditingValue(),
            TextEditingValue(text: rawPhone),
          );
          phoneController.text = phoneMask.getMaskedText();
          initialized = true;
        }
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (profileContext, profileState) {
            nameController.text = profileState.getMe?.fullName ?? '';
            return WillPopScope(
              onWillPop: () async {
                if (_isChanged(state)) {
                  showConfirmDialog(
                      context: context,
                      title: "Chiqish",
                      description: "Agar chiqishni xohlasangiz,\nma'lumotlar saqlanib qolinmaydi",
                      confirmButtonText: "Chiqish",
                      onConfirm: () {
                        Navigator.pop(context);
                        context.read<ProfileBloc>().add(GetMeEvent());
                        Navigator.pop(context, false);
                      });
                  return false;
                }
                return true;
              },
              child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  title: const Text(
                    "Shaxsiy ma'lumotlar",
                    style: TextStyle(
                      color: Color(0xff0D121C),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                body: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: const Color(0xffF3F4F6),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Stack(
                          children: [
                            ClipOval(
                              child: SizedBox(
                                height: 88,
                                width: 88,
                                child: (student?.photo?.url?.isNotEmpty ??
                                        false)
                                    ? SvgPicture.network(
                                        student!.photo!.url!,
                                        fit: BoxFit.cover,
                                        placeholderBuilder: (context) =>
                                            const Center(
                                          child: CupertinoActivityIndicator(),
                                        ),
                                        // Handle error by showing fallback icon
                                        clipBehavior: Clip.none,
                                        height: 88,
                                        width: 88,
                                      )
                                    : SvgPicture.asset(
                                        AppIcons.person,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: SvgPicture.asset(
                                  AppIcons.icEdit,
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 24),
                        child: CustomTextField(
                          labelText: "F.I.O",
                          hintText: "Ismingiz",
                          textInputType: TextInputType.name,
                          controller: nameController,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: CustomPhoneField(
                          controller: phoneController,
                          validatorText: "Telefon raqamni kiriting",
                          labelText: "Telefon raqam",
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 30),
                        child: CustomButton(
                            text: "Saqlash",
                            onPressed: () {
                              showConfirmDialog(
                                  context: context,
                                  title: "O`zgatirish?",
                                  description:
                                      "Shaxsiy ma’lumotlaringizga o’zgartirish kiritmoqchimisiz?",
                                  confirmButtonText: "O`zgartirish",
                                  onConfirm: () async {
                                    context.read<ProfileBloc>().add(UpdateEvent(
                                          id: "a668cce4-bc1b-46e5-a5fe-5d14ffc0ea19",
                                          full_name: nameController.text,
                                          first_name: nameController.text,
                                          last_name: "",
                                          role: "Parents",
                                          salary: 12000000,
                                          password: 12345678,
                                          files: [],
                                          pages: [],
                                          is_archived: false,
                                          filial: [1],
                                          bonus: [],
                                          compensation: [],
                                        ));
                                    Navigator.pop(context);
                                    context
                                        .read<ProfileBloc>()
                                        .add(GetMeEvent());
                                    Navigator.pop(context, true);
                                  },
                                  isDestructive: false);
                            }),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

final phoneMask = MaskTextInputFormatter(
  mask: '(##) ###-##-##',
  filter: {"#": RegExp(r'[0-9]')},
);
