import 'dart:io';
import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:toastification/toastification.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/custom_pagination_widget.dart';
import '../models/comment_model.dart';
import '../repositories/comment_repository.dart';
import '../repositories/me_repository.dart';
import '../widgets/custom_toast.dart';
import '../widgets/image_pickare.dart';
import '../widgets/message_item.dart';
import '../widgets/text_field2.dart';

class CommentsPage extends HookConsumerWidget {
  const CommentsPage({
    super.key,
    required this.lidId,
    required this.studentId,
  });

  final String? lidId;
  final String? studentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("ishaldi");

    final commentController = useTextEditingController();
    final pagingController =
        useState<PagingController<int, CommentModel>?>(null);

    void showImageDialog(File imageFile) {
      final TextEditingController dialogController = TextEditingController();
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (dialogContext) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image Preview
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      imageFile,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextField2(
                    hintText: "Izohni shu yerga yozing...",
                    suffixIcon: AppIcons.send,
                    textEditingController: dialogController,
                    suffixIconOnTap: () async {
                      print("Send button tapped in dialog");
                      try {
                        print("Uploading image...");
                        final imageId = await meRepository.uploadFile(
                          imageFile.path,
                          imageFile.path.split('/').last,
                        );
                        print("Image uploaded with ID: $imageId");
                        print("Adding comment...");
                        await commentRepository.addComment(
                          comment: dialogController.text.trim(),
                          student: studentId,
                          lid: lidId,
                          imgId: imageId,
                        );
                        print("Comment added successfully");
                        pagingController.value?.refresh();
                        print("Comments refreshed");

                        // Close dialog
                        Navigator.of(dialogContext).pop();
                      } catch (e) {
                        print("Error in send: $e"); // Debug
                        CustomToast.show(
                          context,
                          text: "Kutilmagan xatolik",
                          type: ToastificationType.error,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            AppIcons.back,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Izohlar",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColors.grayDarker,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomPaginationWidget2(
                emptyIcon: AppIcons.messagesEmpty,
                onInit: (controller) {
                  pagingController.value = controller;
                },
                upsideDown: true,
                spacing: 12,
                itemBuilder: (item) {
                  return MessageItem(model: item);
                },
                getItems: (page) {
                  return commentRepository.getComments(
                      userId: "a63667b8-d991-4f8b-aae0-ca15927b2a46", page: 1);
                },
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    print("Image picker button tapped"); // Debug
                    try {
                      final xFile = await ImagePickerDialog.show(context);
                      print("Image result: $xFile"); // Debug
                      if (xFile != null) {
                        print("About to show dialog"); // Debug
                        // Convert XFile to File
                        final imageFile = File(xFile.path);
                        showImageDialog(imageFile);
                        print("Dialog shown"); // Debug
                      } else {
                        print("No image selected"); // Debug
                      }
                    } catch (e) {
                      print("Error in image picker: $e"); // Debug
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    height: 48,
                    width: 48,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        AppIcons.commentPhoto,
                      ),
                    ),
                  ),
                ),
                10.horizontal,
                Expanded(
                  child: CustomTextField2(
                    hintText: "Izohni shu yerga yozing...",
                    suffixIcon: AppIcons.send,
                    textEditingController: commentController,
                    suffixIconOnTap: () async {
                      if (commentController.text.isNotEmpty) {
                        try {
                          await commentRepository.addComment(
                            comment: commentController.text,
                            student: studentId,
                            lid: lidId,
                            imgId: null,
                          );
                          pagingController.value?.refresh();
                          commentController.clear();
                        } catch (e) {
                          CustomToast.show(
                            context,
                            text: "Kutilmagan xatolik",
                            type: ToastificationType.error,
                          );
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
            10.vertical,
          ],
        ).paddingSymmetric(horizontal: 16),
      ),
    );
  }
}
