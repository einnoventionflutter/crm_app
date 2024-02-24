import 'dart:math';
import 'package:einnovention/crm_rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  final GlobalKey<NavigatorState> yourNavigatorKey =
      GlobalKey<NavigatorState>();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  void handleMessage(BuildContext context, message) {
    if (message!.data['type'] == 'mesj') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CrmRendering()),
      );
    }
  }

  void initLocalNotifications(BuildContext context, message) async {
    var androidInitialization =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOSInitialization = const DarwinInitializationSettings();

    var initializationSetting = InitializationSettings(
        android: androidInitialization, iOS: iOSInitialization);
    await _flutterLocalNotificationsPlugin.initialize(initializationSetting,
        onDidReceiveNotificationResponse: (payload) {
      handleMessage(context, message);
    });
  }

  // if(Platform.isIOS){
  //   foregroundMessage();
  // }
  // if(Platform .isAndroid){
  //   initLocalNotifications(context, message);
  //   showNotification(message);
  // }
  //initLocalNotifications(context, message);
  //showNotification(message);
  //   handleMessage(context, message);
  //  if (message.data['screen'] == 'specific_screen') {
  //    // Navigate to the desired screen
  //    Navigator.push(
  //      YourNavigatorKey.currentState!.context,
  //      MaterialPageRoute(builder: (context) => QuestionPage()),
  //    );
  //  }

  Future<void> showNotification(message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random.secure().nextInt(10000).toString(), "Important Notification",
        importance: Importance.max);
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            channel.id.toString(), channel.name.toString(),
            channelDescription: 'Channel Description',
            importance: Importance.max,
            priority: Priority.max,
            icon: '@mipmap/ic_launcher',
            ticker: 'Ticker');
    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: darwinNotificationDetails);
    Future.delayed(Duration.zero, () {
      _flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title.toString(),
          message.notification!.body.toString(),
          notificationDetails);
    });
  }
}
