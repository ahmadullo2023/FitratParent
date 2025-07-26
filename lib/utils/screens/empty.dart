// import 'package:fitrat_students/utils/app_assets.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class EmptyScreen extends StatefulWidget {
//   final String imgUrl;
//   final String title;
//   final String subTitle;
//
//   const EmptyScreen(
//       {super.key,
//       required this.imgUrl,
//       required this.title,
//       required this.subTitle});
//
//   @override
//   State<EmptyScreen> createState() => _EmptyScreenState();
// }
//
// class _EmptyScreenState extends State<EmptyScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Positioned(
//               top: MediaQuery.of(context).size.height * 0.2,
//               left: 0,
//               right: 0,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SvgPicture.asset(
//                       widget.imgUrl,
//                       height: 160,
//                     ),
//                     Text(
//                       widget.title,
//                       style: const TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF0D121C),
//                         fontFamily: 'outfitMedium',
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 12),
//                     Text(
//                       widget.subTitle,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFF6C737F),
//                         fontFamily: 'outfitMedium',
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
