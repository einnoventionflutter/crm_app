//import 'dart:convert';

import 'package:einnovention/crm_rendering.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

//import 'package:http/http.dart' as http;
@pragma('vm:entry-point')
Future<void> _firebaseMassagingBackgroundHandler(message) async {
  print(message.notification!.title.toString());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("4f70af14-55bb-496f-a4de-4a245acb9c57");

  OneSignal.Notifications.requestPermission(true);
  // Future<void> sendNotification(String playerId, String message) async {
  //   Map<String, dynamic> notification = {
  //     'user_id': playerId, // Or another CRM ID used by OneSignal
  //     'headings': {'en': message}, // Customize titles for different languages
  //     'contents': {'en': message}, // Customize message texts
  //   };

  //   try {
  //     final response = await http.post(
  //       Uri.parse('https://crm.einnovention.co.uk/'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Y2RjYjAwNGEtMzZiZS00ZmZmLTgzYWMtYjE3YTFjNTJlNWRj',
  //       },
  //       body: jsonEncode(notification),
  //     );
  //     print(notification);
  //     print("""""" """""" """""" "notification" """""" """""" """""");

  //     if (response.statusCode == 200) {
  //       print('Notification sent successfully to OneSignal');
  //     } else {
  //       print(
  //           'Failed to send notification. Status code: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     print('Error sending notification: $e');
  //   }
  // }

  // Future<void> sendNotification(String playerId) async {
  //   // Your OneSignal App ID and API Key
  //   // String appId = '4f70af14-55bb-496f-a4de-4a245acb9c57';

  //   WidgetsFlutterBinding.ensureInitialized();

  //   OneSignal.Debug.setLogLevel(OSLogLevel.verbose); // Optional for debugging

  //   OneSignal.initialize(
  //     appId,
  //   );

  //   OneSignal.Notifications.requestPermission(true);

  //   // Set up notification handlers (optional, but recommended)
  //   //   OneSignal.shared
  //   //       .setNotificationReceivedHandler((OSNotification notification) {
  //   //     // Handle received notification (even in the background)
  //   //   });

  //   //   OneSignal.shared
  //   //       .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
  //   //     // Handle notification opened by the user
  //   //   });

  //   //   OneSignal.shared.setNotificationWillShowInForegroundHandler(
  //   //       (OSNotificationReceivedEvent event) {
  //   //     // Handle notification display while the app is active
  //   //   });
  // }

  runApp(const MyApp());
}

// Future<void> sendNotification(String playerId, String message) async {
//   // Construct the authorization header
//   String authHeader = 'Basic ${base64Encode(utf8.encode('$appId:$apiKey'))}';

//   // Construct the notification payload
//   Map<String, dynamic> notification = {
//     'app_id': appId,
//     'include_player_ids': [playerId],
//     'contents': {'en': message}, // Add other languages if needed
//     // You can include additional parameters like 'title', 'data', etc.
//   };

//   // Send the notification via HTTP POST request to your CRM endpoint
//   try {
//     final response = await http.post(
//       Uri.parse(crmNotificationUrl),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': authHeader,
//       },
//       body: jsonEncode(notification),
//     );

//     if (response.statusCode == 200) {
//       print('Notification sent successfully to CRM');
//     } else {
//       print(
//           'Failed to send notification to CRM. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error sending notification to CRM: $e');
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CrmRendering(),
    );
  }
}
