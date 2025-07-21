import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/app_colors.dart';

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({super.key, this.isDeletable = false});

  final bool isDeletable;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Material(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              color: Colors.white,
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Kamera",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.grayDarker,
                      ),
                    ),
                  ],
                ).paddingSymmetric(vertical: 12),
                onTap: () async {
                  final imagePicker = ImagePicker();
                  final image =
                      await imagePicker.pickImage(source: ImageSource.camera);

                  if (image != null) {
                    Navigator.pop(context, image);
                  }
                },
              ),
            ),
            Container(
              height: 0.5,
              width: double.infinity,
              color: Colors.black12,
            ),
            Material(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              color: Colors.white,
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Galleriya",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.grayDarker,
                      ),
                    ),
                  ],
                ).paddingSymmetric(vertical: 12),
                onTap: () async {
                  final imagePicker = ImagePicker();
                  final image =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    Navigator.pop(context, image);
                  }
                },
              ),
            ),
            Container(
              height: 0.5,
              width: double.infinity,
              color: Colors.black12,
            ),
            if (isDeletable)
              Material(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)),
                color: Colors.white,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 20,
                      ),
                      4.horizontal,
                      Text(
                        "O‘chirish",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ).paddingSymmetric(vertical: 12),
                  onTap: () async {
                    Navigator.pop(context, "delete");
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  static Future<dynamic> show(BuildContext context,
      {bool isDeletable = false}) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return ImagePickerDialog(
            isDeletable: isDeletable,
          );
        });
  }
}
