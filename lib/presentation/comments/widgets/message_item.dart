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
import 'package:shimmer/shimmer.dart';

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
                // border: Border.all(
                //   color: Colors.grey.shade200,
                //   width: 1,
                // ),
                color: isByMine ? const Color(0xFFC2F0D5) : AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: !isByMine
                      ? const Radius.circular(10)
                      : const Radius.circular(0),
                  topLeft: !isByMine
                      ? const Radius.circular(0)
                      : const Radius.circular(10),
                  topRight: const Radius.circular(10),
                  bottomLeft: const Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: .2,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),

              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.grey.shade200,
              //     width: 1,
              //   ),
              //   color: isByMine ? Color(0xFFC2F0D5) : AppColors.white,
              //   borderRadius: BorderRadius.only(
              //     bottomRight: !isByMine ? Radius.circular(10) : Radius.circular(0),
              //     topLeft: !isByMine ? Radius.circular(0) : Radius.circular(10),
              //     topRight: Radius.circular(10),
              //     bottomLeft: Radius.circular(10),
              //   ),
              //
              //   // borderRadius: BorderRadius.circular(8),
              // ),

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
                        SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Scaffold(
                                    backgroundColor: AppColors.black,
                                    appBar: AppBar(
                                      backgroundColor: AppColors.black,
                                      leading: IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios,
                                            color: AppColors.white,
                                          )),
                                    ),
                                    body: Column(
                                      children: [
                                        Spacer(),
                                        CustomCachedNetworkImage(
                                          imageUrl: model.file!.file!,
                                        ),
                                        SizedBox(height: 100),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CustomCachedNetworkImage(
                                imageUrl: model.file!.file!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: double.infinity,
                        //   height: 300,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(8),
                        //     child: CustomCachedNetworkImage(
                        //       imageUrl: model.file!.file!,
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
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

class ShimmerMessageItem extends StatelessWidget {
  const ShimmerMessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: ListView.builder(
        itemCount: 15,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final isMe = index % 2 == 0;
          return Align(
            alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(10),
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.75,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(16),
                    topRight: const Radius.circular(16),
                    bottomLeft: Radius.circular(isMe ? 16 : 0),
                    bottomRight: Radius.circular(isMe ? 0 : 16),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 12,
                      width: 150,
                      color: Colors.white,
                    ),
                    // Container(
                    //   height: 160,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    // ),
                    const SizedBox(height: 10),

                    Container(
                      height: 12,
                      width: 80,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
