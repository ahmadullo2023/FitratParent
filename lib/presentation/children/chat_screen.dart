// // import 'package:flutter/material.dart';
// //
// // class ChatPage extends StatelessWidget {
// //   const ChatPage({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: const BackButton(),
// //         title: Row(
// //           children: [
// //             const CircleAvatar(
// //               radius: 16,
// //               backgroundImage: NetworkImage(
// //                 'https://i.pravatar.cc/150?img=3',
// //               ),
// //             ),
// //             const SizedBox(width: 8),
// //             const Text(
// //               'Ethan Taylor',
// //               style: TextStyle(color: Colors.black),
// //             ),
// //           ],
// //         ),
// //         backgroundColor: Colors.white,
// //         elevation: 1,
// //         automaticallyImplyLeading: true,
// //       ),
// //       backgroundColor: const Color(0xFFF9FAFB),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView(
// //               padding: const EdgeInsets.all(16),
// //               children: [
// //                 Align(
// //                   alignment: Alignment.centerRight,
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.end,
// //                     children: [
// //                       Container(
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(12),
// //                           color: const Color(0xFFD1FADF),
// //                         ),
// //                         clipBehavior: Clip.hardEdge,
// //                         child: Image.network(
// //                           'https://images.unsplash.com/photo-1551334787-21e6bd3ab135',
// //                           width: 240,
// //                           height: 300,
// //                           fit: BoxFit.cover,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 4),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.end,
// //                         children: const [
// //                           Text(
// //                             '10:30 AM',
// //                             style: TextStyle(fontSize: 12, color: Colors.grey),
// //                           ),
// //                           SizedBox(width: 4),
// //                           Icon(Icons.done_all, size: 16, color: Colors.green),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 const SizedBox(height: 12),
// //                 Center(
// //                   child: Container(
// //                     padding:
// //                         const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
// //                     decoration: BoxDecoration(
// //                       color: const Color(0xFFF3F4F6),
// //                       borderRadius: BorderRadius.circular(12),
// //                     ),
// //                     child: const Text(
// //                       'Bugun',
// //                       style: TextStyle(fontSize: 12, color: Colors.grey),
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 12),
// //                 Row(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     const CircleAvatar(
// //                       radius: 16,
// //                       backgroundImage:
// //                           NetworkImage('https://i.pravatar.cc/150?img=6'),
// //                     ),
// //                     const SizedBox(width: 8),
// //                     Flexible(
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           const Text(
// //                             'Liam Davis',
// //                             style: TextStyle(
// //                                 fontSize: 14, fontWeight: FontWeight.w500),
// //                           ),
// //                           const SizedBox(height: 4),
// //                           Container(
// //                             padding: const EdgeInsets.all(12),
// //                             decoration: BoxDecoration(
// //                               color: Colors.white,
// //                               borderRadius: BorderRadius.circular(16),
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black12,
// //                                   blurRadius: 2,
// //                                   offset: Offset(0, 1),
// //                                 )
// //                               ],
// //                             ),
// //                             child: const Text(
// //                               'Hurmatli ota-ona, farzandingiz uchun amalga oshirilgan barcha to‘lovlar ushbu sahifada aks ettiriladi. '
// //                               'Kirim-chiqimlar ro‘yxatini kuzatib boring va to‘lovlarni tezkor amalga oshiring.',
// //                               style: TextStyle(fontSize: 14),
// //                             ),
// //                           ),
// //                           const SizedBox(height: 4),
// //                           const Text(
// //                             '10:30 AM',
// //                             style: TextStyle(fontSize: 12, color: Colors.grey),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Container(
// //             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
// //             decoration: BoxDecoration(
// //               color: Colors.white,
// //               border: Border(top: BorderSide(color: Colors.grey.shade200)),
// //             ),
// //             child: Row(
// //               children: [
// //                 IconButton(
// //                   onPressed: () {},
// //                   icon: const Icon(Icons.image_outlined),
// //                 ),
// //                 Expanded(
// //                   child: TextField(
// //                     decoration: InputDecoration(
// //                       hintText: 'Xabar',
// //                       hintStyle: TextStyle(color: Colors.grey.shade400),
// //                       border: InputBorder.none,
// //                     ),
// //                   ),
// //                 ),
// //                 IconButton(
// //                   onPressed: () {},
// //                   icon: const Icon(Icons.send, color: Color(0xFF22C55E)),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'package:fitrat_parent2/utils/extensions/extensions.dart';
// import 'package:fitrat_parent2/utils/number_extension.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:go_router/go_router.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import '../../utils/app_assets.dart';
// import '../../utils/custom_pagination_widget.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
//
// class CommentsPage extends HookConsumerWidget {
//   const CommentsPage({
//     super.key,
//     required this.id,
//   });
//
//   final String id;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//     final commentController = useTextEditingController();
//     final pagingController = useState<PagingController<int, CommentModel>?>(null);
//
//     return Scaffold(
//       appBar: AppBar(
//         scrolledUnderElevation: 0,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             context.pop();
//           },
//           icon: Icon(Icons.arrow_back)
//         ),
//         centerTitle: true,
//         title: Text(
//           "Izohlar",
//           style: TextStyle(
//             fontWeight: FontWeight.w700,
//             fontSize: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//
//             Expanded(
//               child: CustomPaginationWidget(
//                 emptyIcon: AppIcons.empty,
//                 onInit: (controller) {
//                   pagingController.value = controller;
//                 },
//                 upsideDown: true,
//                 spacing: 12,
//                 itemBuilder: (item) {
//                  return MessageItem(model: item);
//                 },
//                 getItems: (page) {
//                   ref.invalidate(commentsNotifierProvider(
//                     page: page,
//                     userId: id,
//                   ));
//
//                   return
//                     ref.watch(commentsNotifierProvider(
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
//               ),
//             ),
//
//
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
//             //         lid: id,
//             //       )
//             //           .then((_) {
//             //         pagingController.value?.refresh();
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
