import 'dart:io';
import 'package:fitrat_parent2/presentation/comments/widgets/text_field2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../../../utils/app_assets.dart';


void showImageCommentDialog({
  required BuildContext context,
  required File imageFile,
  required Function(String comment) onSubmit,
}) {
  final TextEditingController _controller = TextEditingController();

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.file(
                  imageFile,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 16),

              /// Custom Text Field
              CustomTextField2(
                hintText: "Izohni shu yerga yozing...",
                suffixIcon: AppIcons.send,
                textEditingController: _controller,
                suffixIconOnTap: () async {
                  onSubmit(_controller.text);
                  Navigator.of(context).pop();
                },
              ),

            ],
          ),
        ),
      );
    },
  );
}
