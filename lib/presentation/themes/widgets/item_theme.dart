import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';
import '../bloc/theme_bloc.dart';

class ItemTheme extends StatefulWidget {
  final String title;
  final String? subtitle;
  final String? bottomText;
  final String? subjectId;
  final String? svgAssetPath;
  final bool isDone;
  final bool withPercentage;
  final bool? isActive;
  final int? percentage;
  final VoidCallback? onTab;

  const ItemTheme({
    super.key,
    required this.title,
    this.subtitle,
    this.bottomText,
    this.subjectId,
    this.svgAssetPath,
    this.onTab,
    this.isDone = false,
    this.withPercentage = false,
    this.percentage = 0,
    this.isActive,
  });

  @override
  State<ItemTheme> createState() => _ItemThemeState();
}

class _ItemThemeState extends State<ItemTheme> {
  final bloc = ThemeBloc();

  @override
  void initState() {
    bloc.add(LoadTheme(widget.subjectId ?? ""));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showImage = widget.svgAssetPath != null && widget.bottomText == null;
    final bool isDisabled = widget.isActive == false;

    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return IgnorePointer(
            ignoring: isDisabled,
            child: Opacity(
              opacity: isDisabled ? 0.5 : 1.0,
              child: Material(
                color: Colors.transparent,
                child: Ink(
                  decoration: BoxDecoration(
                    color: isDisabled ? Color(0xffF3F4F6) : AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap: isDisabled
                        ? null
                        : () async {
                            await Future.delayed(
                                const Duration(milliseconds: 100));
                            widget.onTab?.call();
                          },
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8),
                      child: Row(
                        children: [
                          if (showImage)
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xffF3F4F6),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  widget.svgAssetPath!,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          if (showImage) const SizedBox(width: 12),

                          /// Main Text Column
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.themes?.title ?? "",
                                  // title,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontFamily: "outfitMedium"),
                                ),
                                if (widget.subtitle != null)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      widget.title,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF6C737F),
                                      ),
                                    ),
                                  ),
                                if (!showImage && widget.bottomText != null)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      widget.bottomText!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF6C737F),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          if (widget.withPercentage) ...[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                height: 32,
                                width: 32,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      strokeCap: StrokeCap.round,
                                      value: (widget.percentage ?? 0) / 100.0,
                                      strokeWidth: 4,
                                      backgroundColor: const Color(0xFFE5E7EB),
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                        Color(0xff35B26A),
                                      ),
                                    ),
                                    Text(
                                      '${widget.percentage}%',
                                      style: TextStyle(
                                        fontSize: 9.6,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.emerald500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ] else
                            Icon(
                              widget.isDone ? Icons.check : Icons.chevron_right,
                              size: 24,
                              color: widget.isDone
                                  ? AppColors.emerald600
                                  : AppColors.black,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
