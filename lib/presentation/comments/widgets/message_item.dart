import 'package:fitrat_parent2/utils/extensions/extensions.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/db/cache.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/formatters.dart';
import '../../../utils/widgets/custom_cached_network.dart';
import '../../comments2/models/comment_model.dart';
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
    return Align(
      alignment: isByMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: isByMine
            ? const EdgeInsets.only(left: 50)
            : const EdgeInsets.only(right: 50),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isByMine ? AppColors.primaryColorOpacity : AppColors.grayLight,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        height: 24,
                        width: 24,
                        color: AppColors.grayDark.withAlpha(20),
                        child: model.creatorPhoto?.file != null
                            ? CustomCachedNetworkImage(
                                imageUrl: model.creatorPhoto!.file!)
                            : SvgPicture.asset(
                                AppIcons.person,
                              ).paddingOnly(top: 4),
                      ),
                    ),
                    8.horizontal,
                    Text(
                      "${model.firstName} ${model.lastName}",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                // Add photo between name and comment
                /*if (model.photo?.file != null)*/ ...[
                  8.vertical,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CustomCachedNetworkImage(
                      imageUrl: model.photo!.file!,
                      // imageUrl:
                      //     "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2150879290.jpg?c=16x9&q=h_833,w_1480,c_fill",
                      // fit: BoxFit.contain,
                    ),
                  ),
                ],
                8.vertical,
                Text(
                  model.comment ?? "",
                  style: TextStyle(fontSize: 12),
                ).marginOnly(right: 30)
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                Formatter.dateFormatter(model.createdAt ?? "",
                    pattern: "HH:mm"),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayNormal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
