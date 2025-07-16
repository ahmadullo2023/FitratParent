import 'package:fitrat_parent2/presentation/notification/repository/notification_repository.dart';
import 'package:fitrat_parent2/presentation/notification/widget/item_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_pagination_widget.dart';
import '../../utils/formatters.dart';
import 'model/notification_model.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool hasNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.white,
          title: Text(
            "Bildirishnomalar",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: hasNotification
                    ? SvgPicture.asset("assets/icons/tabler_checks1.svg")
                    : SvgPicture.asset("assets/icons/tabler_checks.svg"),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: CustomPaginationWidget<NotificationModel>(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                itemBuilder: (item) {
                  return ItemNotification(
                    comment: item.comment != null
                        ? Formatter.cleanStringApi(item.comment!)
                        : "No Comment",
                    date: Formatter.dateFormatter(item.createdAt),
                    showDot: item.hasRead ?? false,
                    onTap: () async {
                      notificationRepository.updateNotification(
                          notificationId: item.id, isRead: true);
                    },
                  );
                },
                getItems: (page) async {
                  try {
                    final result = await notificationRepository
                        .getNotifications(page: page);
                    return result;
                  } catch (e) {
                    rethrow;
                  }
                },
                emptyBuilder: () => _buildEmptyNotificationView(),
              ),
            ),
          ],
        ));
  }

  Widget _buildEmptyNotificationView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppIcons.emptyNotification, width: 120, height: 120),
          const SizedBox(height: 16),
          const Text(
            "Bildirishnomalar yo‘q",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff1F2A37),
                fontFamily: "outfitMedium"),
          ),
          10.vertical,
          const Text(
            "Siz uchun hech qanday bildirishnoma mavjud emas",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff6C737F),
            ),
          ),
        ],
      ),
    );
  }
}
