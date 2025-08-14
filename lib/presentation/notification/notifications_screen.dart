import 'package:fitrat_parent2/presentation/notification/repository/notification_repository.dart';
import 'package:fitrat_parent2/presentation/notification/widget/dialog_notification.dart';
import 'package:fitrat_parent2/presentation/notification/widget/item_notification.dart';
import 'package:fitrat_parent2/utils/servise/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_pagination_widget.dart';
import '../../utils/formatters.dart';
import '../../utils/widgets/connectivity_wrapper_widget.dart';
import '../widgets/custom_button.dart';
import 'model/notification_model.dart';
import 'package:fitrat_parent2/utils/number_extension.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool _hasUnreadNotifications = false;

  final PagingController<int, NotificationModel> _notificationController =
      PagingController(firstPageKey: 1);

  @override
  Widget build(BuildContext context) {
    return ConnectivityWrapper(
      child: Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  notificationRepository.getNotifications(page: 1);
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              title: Text(
                "Bildirishnomalar",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: "outfitMedium"),
              ),
              centerTitle: true,
              actions: _hasUnreadNotifications
                  ? [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                title: const Text(
                                  'Belgilash?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: const Text(
                                  'Bildirishnomalarni o‘qildi deb belgilamoqchimisiz?',
                                  textAlign: TextAlign.center,
                                ),
                                actionsAlignment: MainAxisAlignment.center,
                                actions: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomButton(
                                            isEnabled2: false,
                                            text: "Yo'q",
                                            onPressed: () {
                                              print("yoq bosildi");
                                              setState(() {});
                                              Navigator.pop(context);
                                            }),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: CustomButton(
                                            text: "Ha",
                                            onPressed: () {
                                              setState(() {
                                                notificationRepository
                                                    .updateNotificationHasReadAll();
                                              });
                                              Navigator.pop(context);
                                            }),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: SvgPicture.asset(
                          AppIcons.doubleCheck,
                          color: AppColors.emerald500,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      )
                    ]
                  : null),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: CustomPaginationWidget<NotificationModel>(
                    controller: _notificationController,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    itemBuilder: (item) {
                      return ItemNotification(
                        comment: item.comment != null
                            ? Formatter.cleanStringApi(item.comment!)
                            : "No Comment",
                        date: Formatter.dateFormatter(item.createdAt),
                        showDot: item.isRead ?? false,
                        onTap: () async {
                          notificationRepository.updateNotificationIsRead(
                              notificationId: item.id);
                          NotificationService.markNotificationAsRead(
                              item.id ?? '');
                          _notificationController.refresh();
                        },
                      );
                    },
                    getItems: (page) async {
                      try {
                        final result = await notificationRepository
                            .getNotifications(page: page);

                        setState(() {
                          _hasUnreadNotifications = result.results
                                  ?.any((item) => item.hasRead == false) ??
                              false;
                        });

                        return result;
                      } catch (e) {
                        rethrow;
                      }
                    },
                    emptyBuilder: () => _buildEmptyNotificationView(),
                  ),
                ),
              ],
            ),
          )),
    );
  }
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
            fontFamily: "outfitMedium",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff6C737F),
          ),
        ),
      ],
    ),
  );
}
