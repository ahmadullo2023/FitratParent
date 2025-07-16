import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/app_assets.dart';
import '../../utils/widgets/custom_cached_network.dart';
import '../main/bloc/main_bloc.dart';
import '../notification/notifications_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double points;
  final bool isLoading;
  final String? userImage;

  const CustomAppBar({
    super.key,
    this.title,
    this.points = 0,
    this.isLoading = false,
    this.userImage,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0.0,
          elevation: 0,
          centerTitle: false,
          title: Text(
            title ?? "",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xFF1F2A37),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 12, bottom: 10),
            child: Container(
              height: 32,
              // color: Colors.deepOrange,
              width: 32,
              child: GestureDetector(
                onTap: () {},
                child: ClipOval(
                  child: userImage != null
                      ? CustomCachedNetworkImage(
                          height: 32,
                          width: 32,
                          iconSize: 12,
                          imageUrl: userImage!,
                        )
                      : SvgPicture.asset(
                          AppIcons.person,
                        ),
                ),
              ),
            ),
          ),
          actions: [
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => PointHistoryScreen()),
            //     );
            //   },
            //   child: Container(
            //     height: 40,
            //     margin: const EdgeInsets.only(right: 10),
            //     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            //     decoration: BoxDecoration(
            //       color: const Color(0xFFF9FAFB),
            //       border: Border(
            //         top: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
            //         left: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
            //         right: BorderSide(color: Color(0xFFF3F4F6), width: 1.5),
            //         bottom: BorderSide(color: Color(0xFFF3F4F6), width: 3),
            //       ),
            //       borderRadius: BorderRadius.circular(40),
            //     ),
            //     child: Row(
            //       children: [
            //         SvgPicture.asset(AppIcons.star),
            //         const SizedBox(width: 6),
            //         isLoading
            //             ? const SizedBox(
            //                 height: 14,
            //                 width: 14,
            //                 child: CupertinoActivityIndicator(
            //                     radius: 7, color: Color(0xffFF830C)),
            //               )
            //             : Text(
            //                 "${points.toInt()}",
            //                 style: const TextStyle(
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.w500,
            //                   color: Color(0xffFF830C),
            //                 ),
            //               ),
            //         const SizedBox(width: 8)
            //       ],
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationsScreen()));
              },
              child: Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFFF9FAFB),
                  border:
                      Border.all(color: const Color(0xFFd8ffe7), width: 1.5),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AppIcons.notifications),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
