// import 'package:fitrat_parent2/utils/extensions/extensions.dart';
// import 'package:fitrat_parent2/utils/number_extension.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:toastification/toastification.dart';
// import '../../../utils/app_assets.dart';
// import '../../../utils/custom_pagination_widget.dart';
// import '../../widgets/custom_password_field.dart';
// import '../models/comment_model.dart';
// import '../notifiers/comments_notifier.dart';
// import 'dart:async';
//
// import '../widgets/message_item.dart';
//
//
// class CommentsAssistantPage extends HookConsumerWidget {
//   const CommentsAssistantPage({
//     super.key,
//     required this.id,
//   });
//
//   final String id;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final commentController = useTextEditingController();
//     final pagingController =
//     useState<PagingController<int, CommentModel>?>(null);
//
//     // useEffect(() {
//     //   Timer? refreshTimer;
//     //
//     //   refreshTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
//     //     if (pagingController.value != null) {
//     //       pagingController.value!.refresh();
//     //     }
//     //   });
//     //
//     //   return () {
//     //     refreshTimer?.cancel();
//     //   };
//     // }, []);
//
//     return Scaffold(
//       appBar: AppBar(
//         scrolledUnderElevation: 0,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             context.pop();
//           },
//           icon: SvgPicture.asset(
//             AppIcons.book,
//           ),
//         ),
//         centerTitle: true,
//         title: Text(
//           "Izohlar",
//           style: TextStyle(
//             fontWeight: FontWeight.w700,
//             fontSize: 20,
//             color: Colors.grey,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: CustomPaginationWidget(
//                 emptyIcon: AppIcons.empty,
//                 onInit: (controller) {
//                   pagingController.value = controller;
//                 },
//                 upsideDown: true,
//                 spacing: 12,
//                 itemBuilder: (item) {
//                   return MessageItem(model: item);
//                 },
//                 getItems: (page) {
//                   ref.invalidate(commentsNotifierProvider(
//                     page: page,
//                     userId: id,
//                   ));
//
//                   return ref
//                       .watch(commentsNotifierProvider(
//                     page: page,
//                     userId: id,
//                   ).future)
//                       .then((pagination) {
//                     final adjustedItems = pagination.results?.map((comment) {
//                       final createdAtDate = comment.createdAt != null
//                           ? DateTime.parse(comment.createdAt!).add(const Duration(hours: 5))
//                           : null;
//                       return comment.copyWith(
//                         createdAt: createdAtDate?.toIso8601String(),
//                       );
//                     }).toList() ?? [];
//
//                     return pagination.copyWith(results: adjustedItems);
//                   });
//                 },
//
//               ),
//             ),
//             // CustomTextField(
//             //   hintText: "Izohni shu yerga yozing...",
//             //   suffixIcon: AppIcons.send,
//             //   textEditingController: commentController,
//             //   suffixIconOnTap: () async {
//             //     if (commentController.text.isNotEmpty) {
//             //       commentRepository
//             //           .addComment(
//             //         comment: commentController.text,
//             //         student: id,
//             //         // createdAt: DateTime.now().toUtc().toIso8601String(),
//             //         lid: id,
//             //       )
//             //           .then((_) {
//             //         pagingController.value?.refresh();
//             //         // CustomToast.show(context,
//             //         //     text: "Izoh muvaffaqiyatli yuborildi");
//             //       }).onError((e, s) {
//             //         CustomToast.show(context,
//             //             text: "Kutilmagan xatolik",
//             //             type: ToastificationType.error);
//             //       });
//             //       commentController.clear();
//             //     }
//             //   },
//             // ),
//             10.vertical,
//           ],
//         ).paddingSymmetric(horizontal: 16),
//       ),
//     );
//   }
// }
