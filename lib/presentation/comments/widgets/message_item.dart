import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/db/cache.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/formatters.dart';
import '../../../utils/widgets/custom_cached_network.dart';
import '../models/comment_model.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({
    super.key,
    required this.model,
  });

  final CommentModel model;

  @override
  Widget build(BuildContext context) {
    final myId = cache.getString("id");
    final isByMine = model.creator == myId;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Align(
        alignment: isByMine ? Alignment.centerRight : Alignment.centerLeft,
        child: Stack(
          children: [
            !isByMine
                ? Align(
                    alignment: Alignment.topLeft,
                    child: ClipOval(
                      child: Container(
                        height: 24,
                        width: 24,
                        color: AppColors.grayDark.withAlpha(20),
                        child: model.photo?.file != null
                            ? CustomCachedNetworkImage(
                                imageUrl: model.photo!.file!)
                            : SvgPicture.asset(
                                AppIcons.person,
                              ).paddingOnly(top: 4),
                      ),
                    ),
                  )
                : SizedBox(),
            Container(
              margin: isByMine
                  ? const EdgeInsets.only(left: 70)
                  : const EdgeInsets.only(right: 50, left: 30),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade200,
                  width: 1,
                ),
                color: isByMine ? Color(0xFFC2F0D5) : AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      !isByMine
                          ? Text(
                              "${model.firstName} ${model.lastName}",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )
                          : SizedBox(),
                      if (model.file?.file != null) ...[
                        8.vertical,
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CustomCachedNetworkImage(
                            imageUrl: model.file!.file!,
                          ),
                        ),
                      ],
                      model.file?.file != null ? 8.vertical : 0.vertical,
                      Text(
                        model.comment ?? "",
                        style: TextStyle(fontSize: 12),
                      ).marginOnly(right: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            Formatter.dateFormatter(model.createdAt ?? "",
                                pattern: "HH:mm"),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grayNormal,
                            ),
                          ),
                          SizedBox(width: 5),
                          isByMine
                              ? SvgPicture.asset(AppIcons.tablerChecks,
                                  height: 20)
                              : SizedBox(),
                        ],
                      )
                    ],
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
