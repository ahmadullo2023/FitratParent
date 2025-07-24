import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitrat_parent2/firebase_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final _firebaseMessaging = FirebaseMessaging.instance;
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  late AndroidNotificationChannel channel;

  static Future<void> initialize() async {
    NotificationService();
  }

  NotificationService() {
    _init();
  }

  //request notification permission

  Future _init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');
      localInit();
      _notificationListener();
    } else {
      debugPrint('User declined or has not accepted permission');
    }
  }

  static Future<String?> getFcmToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      log("Device token ------>$token");
      return token;
    } catch (e) {
      log("Device token ------>$e");
      return null;
    }
  }

  static Future localInit() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    DarwinInitializationSettings initializationSettingsDarwin =
        const DarwinInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    //request notification permissions for android 13 and above
    if (_flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>() !=
        null) {
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()!
          .requestNotificationsPermission();
    }

    _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onNotificationTap,
      onDidReceiveBackgroundNotificationResponse: onNotificationTap,
    );
  }

  Future _notificationListener() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      showNotification(message);
    });
    FirebaseMessaging.onBackgroundMessage(_backGroundMessageHandler);
  }

  static Future<void> showNotification(RemoteMessage message) async {
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: AndroidNotificationDetails(
        'high_importance_channel',
        'High Importance Notifications',
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
        icon: '@mipmap/ic_launcher',
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        sound: 'default',
      ),
    );

    await _flutterLocalNotificationsPlugin.show(
      message.hashCode,
      message.notification!.title!,
      message.notification!.body!,
      platformChannelSpecifics,
      payload: message.data['route'],
    );
  }

  static void onNotificationTap(NotificationResponse notificationResponse) {}
}

@pragma('vm:entry-point')
Future<void> _backGroundMessageHandler(message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  NotificationService.localInit();
  NotificationService.showNotification(message);
}
