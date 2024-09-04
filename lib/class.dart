import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:ecommerce_user/core/function/formDataPost.dart';
import 'package:http/http.dart' as http;

// converted=1
// errored=0
// failed=0
// successful=2
// suppressed
abstract class SendPushNotifications {
  static void sendOneSignalNotification() async {
    const String apiurl = 'https://onesignal.com/api/v1/notifications';
    const String apiKey = 'YTBiZmZhY2QtYjJkYS00Zjc4LWI5MWUtMTg2MTA0ZTJkNzhh';
    const String appId = '9c37a804-6bb8-4055-96f4-a56308ae8b63';
    final Map<String, dynamic> requestBody = {
      "included_segments": ["All"],

      "headings": {"en": "You have a new message"},
      "contents": {
        "en": "Hey there!!",
      },
      "ios_interruption_level": "critical",
      "app_id": appId,
      "large_icon": "ic_launcher_round.png",
      "data": {
        "foo": "Additional data which you want to send with your notification"
      },
      'big_picture':
          "https://letsenhance.io/static/03620c83508fc72c6d2b218c7e304ba5/11499/UpscalerAfter.jpg", // الصورة الكبيرة للإشعار في Android
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
      if (response.statusCode == 200) {
        log("'Notification sent successfully'");
        log(response.body);
      } else {
        log('Failed to send notification. Status code: $response.statusCode)');
        log(response.body);
      }
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
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: 5deb1345-5144-4602-af96-5e50a3b84946
// I/flutter ( 4554): Title: null
// I/flutter ( 4554): Content: Testing Message
// I/flutter ( 4554): Sent At: 1725105601
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: 7633bf83-4e7a-473f-ab89-ae941c76e002
// I/flutter ( 4554): Title: null
// I/flutter ( 4554): Content: Testing Message
// I/flutter ( 4554): Sent At: 1725105485
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: dfd45a6c-b28c-4950-9580-b00d59a342e0
// I/flutter ( 4554): Title: cujgfjg
// I/flutter ( 4554): Content: jhfgjgfj
// I/flutter ( 4554): Sent At: 1725101002
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: 7fb52779-d1dc-4978-8408-8b070cc21815
// I/flutter ( 4554): Title: cujgfjg
// I/flutter ( 4554): Content: jhfgjgfj
// I/flutter ( 4554): Sent At: 1725100985
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: 1ef61243-f1c0-4a46-bb24-958f6e10915c
// I/flutter ( 4554): Title: fgjhgjg
// I/flutter ( 4554): Content: gvjgvj
// I/flutter ( 4554): Sent At: 1725087691
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: 87b4a811-07df-4a1b-812c-8daec6ec55bf
// I/flutter ( 4554): Title: x
// I/flutter ( 4554): Content:  vjutfiygtyii
// I/flutter ( 4554): Sent At: 1725048934
// I/flutter ( 4554): ==================================
// I/flutter ( 4554): Notification ID: a3bdb1ce-c8a9-4369-a718-40ff9439175b