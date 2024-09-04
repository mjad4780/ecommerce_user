import 'package:ecommerce_user/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:ecommerce_user/core/function/formDataPost.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //OneSignal
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("***********APPId");
  OneSignal.Notifications.requestPermission(true);
  // runApp();
}

abstract class SendPushNotifications {
  static void sendOneSignalNotification() async {
    const String apiurl = 'https://onesignal.com/api/v1/notifications';
    const String apiKey = '**************APIKEY';
    const String appId = '*********APPId';
    final Map<String, dynamic> requestBody = {
      "included_segments": ["All"], //==Topic
      //  "include_player_ids"=>array($pleyerId) , // ==token

      "headings": {"en": "You have a new message"}, // Title
      "contents": {
        "en": "Hey there!!", // Body
      },
      "ios_interruption_level": "critical",
      "app_id": appId,
      "large_icon": "ic_launcher_round.png",
      "data": {
        "foo": "Additional data which you want to send with your notification"
      },
      'big_picture': "1.png", //Image
    };

    final Map<String, String> headers = {
      'Authorization': 'Basic $apiKey',
      'accept': 'application/json',
      'content-type': 'application/json',
    };
    try {
      final http.Response response = await http.post(
        Uri.parse(apiurl),
        headers: headers,
        body: jsonEncode(requestBody),
      );
    } catch (error) {
      log('Error sending notification: $error');
    }
  }

  static Future<void> getAllNotifications() async {
    const String apiKey = 'YTBiZmZhY2QtYjJkYS00Zjc4LWI5MWUtMTg2MTA0ZTJkNzhh';
    const String appId = '9c37a804-6bb8-4055-96f4-a56308ae8b63';
    var url =
        Uri.parse('https://onesignal.com/api/v1/notifications?app_id=$appId');

    var response = await http.get(
      url,
      headers: {
        "Authorization": "Basic $apiKey",
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List notifications = jsonResponse['notifications'] ?? [];

      // عرض الإشعارات
      for (var notification in notifications) {
        print("Notification ID: ${notification['id']}");
        print("Title: ${notification['headings']['en']}");
        print("Content: ${notification['contents']['en']}");
        print("Sent At: ${notification['completed_at']}");
        print("==================================");
      }
    } else {
      print("Failed to retrieve notifications: ${response.body}");
    }
  }

  static Future<void> checkNotificationStatus(String notificationId) async {
    const String apiKey = 'YTBiZmZhY2QtYjJkYS00Zjc4LWI5MWUtMTg2MTA0ZTJkNzhh';
    const String appId = '9c37a804-6bb8-4055-96f4-a56308ae8b63';

    var url = Uri.parse(
        'https://onesignal.com/api/v1/notifications/$notificationId?app_id=$appId');
    var response = await http.get(
      url,
      headers: {
        "Authorization": "Basic $apiKey",
      },
    );

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      log(jsonResponse.toString());
      int errored = jsonResponse['errored'];
      int converted = jsonResponse['converted'];
      int successful = jsonResponse['successful'];
      int failed = jsonResponse['failed'];
      print("Number of recipients: $errored");
      print("Number of clicks: $converted");
      print("Number of recipients: $successful");
      print("Number of clicks: $failed");
    } else {
      print("Failed to retrieve notification status: ${response.body}");
    }
  }

  static Future<void> checkNotificationStatus2(String notificationId) async {
    const String apiKey = 'YTBiZmZhY2QtYjJkYS00Zjc4LWI5MWUtMTg2MTA0ZTJkNzhh';
    const String appId = '9c37a804-6bb8-4055-96f4-a56308ae8b63';
    Map<String, String> map = {'id': notificationId};

    var url = Uri.parse(
        'http://10.0.2.2/e-ecommerse/admin/notification/get_analysis.php');
    var response = await http.post(
      url,
      body: map,
    );
    print(response);
    log(response.toString());
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      log(jsonResponse.toString());
      int errored = jsonResponse['errored'];
      int converted = jsonResponse['converted'];
      int successful = jsonResponse['successful'];
      int failed = jsonResponse['failed'];
      print("Number of recipients: $errored");
      print("Number of clicks: $converted");
      print("Number of recipients: $successful");
      print("Number of clicks: $failed");
    } else {
      print("Failed to retrieve notification status: ${response.body}");
    }
  }

  static get() async {
    Map<String, dynamic> id = {"id": '5deb1345-5144-4602-af96-5e50a3b84946'};

    var response = await Dio().post(
        'http://localhost/e-ecommerse/admin/notification/get_analysis.php',
        data: formDataPost(id));
    print('fgffff$response');

    var responses = ClassName.fromJson(response as Map<String, dynamic>);
    print('fgffffffffffffffffffffffffff$responses');
  }
}

class ClassName {
  int? converted;
  int? errored;
  int? failed;
  int? successful;

  ClassName({this.converted, this.errored, this.failed, this.successful});

  ClassName.fromJson(Map<String, dynamic> json) {
    converted = json['converted'];
    errored = json['errored'];
    failed = json['failed'];
    successful = json['successful'];
  }
}
