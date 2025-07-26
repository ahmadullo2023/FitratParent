import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/app_assets.dart';
import '../main/bloc/main_bloc.dart';
import '../notification/notifications_screen.dart';
import '../notification/repository/notification_repository.dart';

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
              height: 40,
              width: 35,
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage:
                      userImage != null ? NetworkImage(userImage!) : null,
                  child: userImage == null
                      ? SvgPicture.asset(
                          AppIcons.person,
                          height: 20,
                          width: 20,
                        )
                      : null,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationsScreen()));
              },
              icon: Stack(
                children: [
                  SvgPicture.asset(
                    AppIcons.notifications,
                  ),
                  if (notificationCount > 0)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: Text(
                          notificationCount.toString(),
                          //'${state.count}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
              padding: EdgeInsets.zero,
            ),
          ],
        );
      },
    );
  }
}
