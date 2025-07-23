import 'dart:io';
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
    final commentController = useTextEditingController();
    final pagingController =
        useState<PagingController<int, CommentModel>?>(null);
    final selectedImage = useState<File?>(null);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(AppIcons.back),
        ),
        centerTitle: true,
        title: const Text(
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
                onInit: (controller) => pagingController.value = controller,
                upsideDown: true,
                spacing: 12,
                itemBuilder: (item) => MessageItem(model: item),
                getItems: (page) => commentRepository.getComments(
                  userId: studentId!,
                  page: page,
                ),
              ),
            ),
            const Divider(height: 1, thickness: 1, color: Color(0xFFF1F1F1)),
            if (selectedImage.value != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            selectedImage.value!,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: GestureDetector(
                            onTap: () => selectedImage.value = null,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: const Icon(
                                    Icons.close,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () async {
                      final xFile = await ImagePickerDialog.show(context);
                      if (xFile != null) {
                        selectedImage.value = File(xFile.path);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        color: Color(0xFFF9FAFB),
                      ),
                      height: 48,
                      width: 48,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(AppIcons.commentPhoto),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF9FAFB),
                      ),
                      child: CustomTextField2(
                        hintText: "Izoh yozing...",
                        suffixIcon: AppIcons.send2,
                        textEditingController: commentController,
                        suffixIconOnTap: () async {
                          if (commentController.text.isNotEmpty ||
                              selectedImage.value != null) {
                            try {
                              String? imageId;
                              if (selectedImage.value != null) {
                                imageId = await meRepository.uploadFile(
                                  selectedImage.value!.path,
                                  selectedImage.value!.path.split('/').last,
                                );
                              }

                              await commentRepository.addComment(
                                comment: commentController.text.trim(),
                                student: studentId,
                                lid: lidId,
                                imgId: imageId,
                              );
                              commentController.clear();
                              selectedImage.value = null;
                              pagingController.value?.refresh();
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
