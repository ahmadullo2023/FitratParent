import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/widgets/custom_cached_network.dart';
import '../../../comments/widgets/image_pickare.dart';
import '../../../main/bloc/main_bloc.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_password_field.dart';
import '../../../widgets/custom_phone_field.dart';
import '../../bloc/profile_bloc.dart';
import '../dialogs.dart';
import 'bloc/edit_profile_bloc.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String? originalImageId = "";
  bool initialized = false;

  bool _isChanged(MainState state) {
    final student = state.meModel;

    if (student == null) return false;

    final fullNameChanged = nameController.text != (student.firstName ?? '') ||
        lastNameController.text != (student.lastName ?? '');

    final phoneUnmasked = phoneMask.getUnmaskedText();
    final phoneChanged = phoneUnmasked != student.phone?.substring(3);

    final photoState = context.read<EditProfileBloc>().state;
    final photoChanged = photoState.currentPhotoId != originalImageId;

    return fullNameChanged || phoneChanged || photoChanged;
  }

  @override
  void dispose() {
    nameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<ProfileBloc>().add(GetMeEvent());
    context.read<MainBloc>().add(LoadMe());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        final student = state.meModel;

        if (student != null && !initialized) {
          nameController.text = student.firstName ?? '';
          lastNameController.text = student.lastName ?? '';
          final rawPhone = student.phone?.substring(4) ?? '';
          phoneMask.formatEditUpdate(
            const TextEditingValue(),
            TextEditingValue(text: rawPhone),
          );
          phoneController.text = phoneMask.getMaskedText();

          context.read<EditProfileBloc>().add(SetPhotoId(student.photo?.id));
          originalImageId = student.photo?.id;
          initialized = true;
        }

        return WillPopScope(
          onWillPop: () async {
            if (_isChanged(state)) {
              showConfirmDialog(
                  context: context,
                  title: "Chiqish",
                  description:
                      "Agar chiqishni xohlasangiz,\nma'lumotlar saqlanib qolinmaydi",
                  confirmButtonText: "Chiqish",
                  onConfirm: () {
                    context.read<EditProfileBloc>()
                        .add(SetPhotoId(originalImageId));
                    Navigator.pop(context);
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
            body: SafeArea(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color(0xffF3F4F6),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Stack(
                        children: [
                          BlocBuilder<EditProfileBloc, EditProfileState>(
                            builder: (context, photoState) {
                              return ClipOval(
                                child: InkWell(
                                  onTap: photoState.isUploadingPhoto
                                      ? null
                                      : () async {
                                          final image =
                                              await ImagePickerDialog.show(
                                            context,
                                            isDeletable:
                                                photoState.currentPhotoId != null,
                                          );
                                          if (image != null) {
                                            if (image is XFile) {
                                              context.read<EditProfileBloc>().add(
                                                    UploadPhoto(
                                                      filePath: image.path,
                                                      fileName: image.name,
                                                    ),
                                                  );
                                            } else if (image == "delete") {
                                              context
                                                  .read<EditProfileBloc>()
                                                  .add(DeletePhoto());
                                            }
                                          }
                                        },
                                  child: SizedBox(
                                    height: 88,
                                    width: 88,
                                    child: photoState.isUploadingPhoto
                                        ? const Center(
                                            child: CupertinoActivityIndicator())
                                        : _buildProfileImage(photoState, student),
                                  ),
                                ),
                              );
                            },
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
                        labelText: "Ism",
                        hintText: "Ismingiz",
                        textInputType: TextInputType.name,
                        controller: nameController,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: CustomTextField(
                        labelText: "Familiya",
                        hintText: "Familiangiz",
                        textInputType: TextInputType.name,
                        controller: lastNameController,
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
                    BlocConsumer<EditProfileBloc, EditProfileState>(
                      listener: (context, state) {
                        if (state.status == PutStatus.success) {
                          context
                              .read<MainBloc>()
                              .add(LoadMe()); // Refresh user data
                          Navigator.pop(context, true);
                        } else if (state.status == PutStatus.error) {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(content: Text('Xatolik yuz berdi')),
                          // );
                        }
              
                        if (state.uploadError != null) {
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(content: Text('Rasm yuklashda xatolik: ${state.uploadError}')),
                          // );
                        }
                      },
                      builder: (context, editState) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 22),
                          child: CustomButton(
                            text: "Saqlash",
                            // isLoading: editState.status == PutStatus.loading,
                            onPressed: () {
                              showConfirmDialog(
                                context: context,
                                title: "O`zgatirish?",
                                description:
                                    "Shaxsiy ma'lumotlaringizga o'zgartirish kiritmoqchimisiz?",
                                confirmButtonText: "O`zgartirish",
                                onConfirm: () async {
                                  final photoState = context.read<EditProfileBloc>().state;
              
                                  String? photoToSend;
                                  bool deletePhoto = false;
              
                                  if (photoState.currentPhotoId == null &&
                                      originalImageId != null) {
                                    photoToSend = null;
                                    deletePhoto = true;
                                  } else if (photoState.currentPhotoId !=
                                      originalImageId) {
                                    photoToSend = photoState.currentPhotoId;
                                  } else {
                                    photoToSend = originalImageId;
                                  }
              
                                  context.read<EditProfileBloc>().add(EditData(
                                        name: nameController.text,
                                        lastName: lastNameController.text,
                                        phone: phoneController.text,
                                        photo: photoToSend,
                                      ));
              
                                  Navigator.pop(context);
                                  Navigator.pop(context);

                                },
                                isDestructive: false,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProfileImage(EditProfileState photoState, dynamic student) {
    final currentPhotoId = photoState.currentPhotoId;

    // If there's a current photo ID that matches the original, use the original file URL
    if (currentPhotoId != null &&
        currentPhotoId == originalImageId &&
        student?.photo?.file?.isNotEmpty == true) {
      return CustomCachedNetworkImage(
        key: ValueKey(student!.photo!.file!),
        imageUrl: student.photo!.file!,
        fit: BoxFit.cover,
        width: 88,
        height: 88,
      );
    }

    if (photoState.currentPhotoFile != null &&
        photoState.currentPhotoFile!.isNotEmpty) {
      return CustomCachedNetworkImage(
        key: ValueKey(photoState.currentPhotoFile!),
        imageUrl: photoState.currentPhotoFile!,
        fit: BoxFit.cover,
        width: 88,
        height: 88,
      );
    }

    if (student?.photo?.file?.isNotEmpty ?? false) {
      return CustomCachedNetworkImage(
        key: ValueKey(student!.photo!.file!),
        imageUrl: student.photo!.file!,
        fit: BoxFit.cover,
        width: 88,
        height: 88,
      );
    }

    // No image at all - show default avatar
    return SvgPicture.asset(
      AppIcons.person,
      fit: BoxFit.cover,
      height: 70,
      width: 70,
    );
  }
}

final phoneMask = MaskTextInputFormatter(
  mask: '(##) ###-##-##',
  filter: {"#": RegExp(r'[0-9]')},
);
