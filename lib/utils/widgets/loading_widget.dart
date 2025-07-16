import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.color, this.height});

  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? SizedBox(
        height: height,
        child: CircularProgressIndicator(
          color: color ?? AppColors.emerald500,
          strokeWidth: 2.5,
          backgroundColor: AppColors.black.withOpacity(.1),
        ),
      )
          : CupertinoActivityIndicator(
        color: color ?? AppColors.emerald500,
        radius: height ?? 15,
      ),
    );
  }
}