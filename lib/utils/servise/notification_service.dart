import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitrat_parent2/main.dart';
import 'package:fitrat_parent2/presentation/notification/notifications_screen.dart';
import 'package:fitrat_parent2/utils/extensions/navigator_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../firebase_options.dart';

int uuidToInt(String uuid) => uuid.hashCode.abs() % 2147483647;

class NotificationService {
  static final _firebaseMessaging = FirebaseMessaging.instance;
  static final _localNotifications = FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _initLocalNotifications();
      _listenToMessages();
    } else {
      log('Notifications permission denied');
    }
  }

  static Future<String?> getFcmToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      log("Device token: $token");
      return token;
    } catch (e) {
      log("Failed to get token: $e");
      return null;
    }
  }

  static Future<void> _initLocalNotifications() async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_notification');
    const iosSettings = DarwinInitializationSettings();
    const initSettings =
        InitializationSettings(android: androidSettings, iOS: iosSettings);

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: onNotificationTap,
      onDidReceiveBackgroundNotificationResponse: onNotificationTap,
    );

    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  static void _listenToMessages() {
    FirebaseMessaging.onMessage.listen(showNotification);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNavigation);

    _firebaseMessaging.getInitialMessage().then((message) {
      if (message != null) _handleNavigation(message);
    });
    //FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
  }

  static Future<void> showNotification(RemoteMessage message) async {
    try {
      const channel = AndroidNotificationChannel(
        'high_importance_channel',
        'High Importance Notifications',
        description: 'This channel is used for important notifications.',
        importance: Importance.max,
      );

      await _localNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      final notificationId =
          uuidToInt(message.data['id'] ?? DateTime.now().toString());
      final payload = message.data['choice'] ?? message.data['type'] ?? '';

      const details = NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          channelDescription: 'Used for important notifications.',
          importance: Importance.max,
          priority: Priority.high,
          playSound: true,
          enableVibration: true,
          icon: '@mipmap/ic_notification',
        ),
        iOS: DarwinNotificationDetails(
            presentAlert: true, presentBadge: true, presentSound: true),
      );

      await _localNotifications.show(
        notificationId,
        message.notification?.title ?? 'Notification',
        message.notification?.body ?? 'You have a new notification',
        details,
        payload: payload,
      );
    } catch (e, st) {
      log('Error showing notification: $e\n$st');
    }
  }

  static void onNotificationTap(NotificationResponse response) {
    final payload = response.payload;
    if (payload != null && payload.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _navigateTo(payload));
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) => _navigateToDefault());
    }
  }

  static void _handleNavigation(RemoteMessage message) {
    final type = message.data['choice'] ?? message.data['type'];
    if (type != null && type.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _navigateTo(type));
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) => _navigateToDefault());
    }
  }

  static void _navigateTo(String type) {
    final context = navigatorKey.currentState?.context;
    if (context == null) return;

    log('Navigating to: $type');

    switch (type) {
      case NotificationType.TeacherFinance:
      case NotificationType.Bonus:
      case NotificationType.New_Student:
      case NotificationType.First_Lesson_Lid:
      case NotificationType.Tasks:
      case NotificationType.Students:
      case NotificationType.Comments:
      case NotificationType.Monitoring:
      case NotificationType.Results:
      case NotificationType.Examination:
      case NotificationType.Shopping:
      case NotificationType.Homework:
      _navigateToDefault();
      //context.read<MainBloc>().add(ChangeTab(2));
        break;
      default:
        _navigateToDefault();
    }
  }

  static void _navigateToDefault() {
    final context = navigatorKey.currentState?.context;
    context?.push(NotificationsScreen());
  }

  static Future<void> markNotificationAsRead(String notificationId) async {
    try {
      await _localNotifications.cancel(uuidToInt(notificationId));
    } catch (e) {
      log('Error cancelling notification: $e');
    }
  }
}

@pragma('vm:entry-point')
Future<void> _backgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationService.showNotification(message);
}

class NotificationType {
  static const TeacherFinance = 'TeacherFinance';
  static const Bonus = 'Bonus';
  static const New_Student = 'New_Student';
  static const First_Lesson_Lid = 'First_Lesson_Lid';
  static const Tasks = 'Tasks';
  static const Students = 'Students';
  static const Comments = 'Comments';
  static const Monitoring = 'Monitoring';
  static const Results = 'Results';
  static const Examination = 'Examination';
  static const Shopping = 'Shopping';
  static const Homework = 'Homework';
}
