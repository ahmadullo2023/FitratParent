import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../app_colors.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final BorderRadius? radius;
  final double iconSize;
  final Widget? placeHolder;
  final String? title;
  final bool border;
  final BoxFit? fit;
  final String? errorIcon;
  final bool showShimmer;

  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.placeHolder,
    this.radius,
    this.border = false,
    this.showShimmer = true,
    this.iconSize = 60,
    this.title,
    this.fit,
    this.errorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? CustomErrorWidget(
      height: height,
      color: Colors.white,
      width: width,
      border: border,
      iconSize: iconSize,
      title: title,
      errorIcon: errorIcon,
    )
        : ClipRRect(
        borderRadius: radius ?? BorderRadius.circular(0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: radius ?? BorderRadius.circular(8),
              border: border
                  ? Border.all(color: AppColors.buttonTextColor)
                  : null),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            placeholder: (context, url) => showShimmer == true
                ? placeHolder ??
                Shimmer.fromColors(
                    period: const Duration(milliseconds: 300),
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade300.withOpacity(.3),
                    child: CustomErrorWidget(
                      height: height,
                      radius: radius,
                      width: width,
                      border: border,
                      iconSize: iconSize,
                      title: title,
                      errorIcon: errorIcon,
                    ))
                : Container(),
            errorWidget: (context, url, error) => CustomErrorWidget(
              height: height,
              color: Colors.white,
              width: width,
              border: border,
              iconSize: iconSize,
              title: title,
              errorIcon: errorIcon,
            ),
          ),
        ));
  }
}

class CustomErrorWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final bool border;
  final double iconSize;
  final String? title;
  final String? errorIcon;
  final Color color;
  final BorderRadius? radius;

  const CustomErrorWidget({
    super.key,
    this.height,
    this.width,
    this.border = false,
    this.iconSize = 60,
    this.title,
    this.errorIcon,
    this.color = Colors.grey,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: radius ?? BorderRadius.circular(8),
          color: color,
          border: border ? Border.all(color: AppColors.buttonTextColor) : null),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline_outlined,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}