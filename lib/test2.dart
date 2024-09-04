import 'dart:developer';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/notification/local_notifications_service.dart';

abstract class NetworkInfo {
  Future<bool>? get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

class PushNotificationsService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static late SharedPreferences _prefs;
  static NetworkInfo networkInfo = NetworkInfoImpl(DataConnectionChecker());

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();

    await messaging.requestPermission();
    await messaging.getToken().then((value) {
      sendTokenToServer(value!);
    });
    messaging.onTokenRefresh.listen((value) {
      sendTokenToServer(value);
    });

    FirebaseMessaging.onBackgroundMessage(handlebackgroundMessage);

    // foreground
    handleForegroundMessage();

    messaging.subscribeToTopic('all').then((val) {
      log('Subscribed to topic "all"');
    });

    _monitorConnectivity();
  }

  static Future<void> handlebackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    log(message.notification?.title ?? 'null');

    // تسجيل الحدث عند استلام الإشعار في الخلفية
    analytics.logEvent(
      name: 'notification_received_background',
      parameters: {
        'title': message.notification?.title ?? 'null',
        'body': message.notification?.body ?? 'null',
      },
    );

    // تخزين الإشعار إذا لم يكن هناك اتصال بالإنترنت
    _storeNotificationIfOffline(message);
  }

  static void handleForegroundMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // إظهار إشعار محلي
      LocalNotificationService.showBasicNotification(message);

      // تسجيل الحدث عند استلام الإشعار في المقدمة
      analytics.logEvent(
        name: 'notification_received_foreground',
        parameters: {
          'title': message.notification?.title ?? 'null',
          'body': message.notification?.body ?? 'null',
        },
      );

      // تخزين الإشعار إذا لم يكن هناك اتصال بالإنترنت
      _storeNotificationIfOffline(message);
    });
  }

  static void _monitorConnectivity() {
    networkInfo.isConnected!.then((isConnected) {
      if (isConnected) {
        _sendPendingNotifications();
      }
    });

    DataConnectionChecker().onStatusChange.listen((status) {
      if (status == DataConnectionStatus.connected) {
        _sendPendingNotifications();
      }
    });
  }

  static void _storeNotificationIfOffline(RemoteMessage message) async {
    bool isConnected = await networkInfo.isConnected!;
    if (!isConnected) {
      List<String>? pendingNotifications =
          _prefs.getStringList('pending_notifications') ?? [];
      pendingNotifications.add(message.data.toString());
      await _prefs.setStringList('pending_notifications', pendingNotifications);
      log('Notification stored due to lack of internet connection.');
    } else {
      _sendNotificationToServer(message);
    }
  }

  static void _sendPendingNotifications() async {
    List<String>? pendingNotifications =
        _prefs.getStringList('pending_notifications') ?? [];
    if (pendingNotifications.isNotEmpty) {
      for (String notificationData in pendingNotifications) {
        // إعادة إرسال كل إشعار محفوظ
        RemoteMessage message =
            RemoteMessage(data: _stringToMap(notificationData));
        _sendNotificationToServer(message);
      }
      await _prefs.remove('pending_notifications');
      log('All pending notifications sent.');
    }
  }

  static void _sendNotificationToServer(RemoteMessage message) {
    // إرسال الإشعار إلى الخادم أو التعامل معه كما تراه مناسبًا
    log('Notification sent to server: ${message.data}');
  }

  static Map<String, dynamic> _stringToMap(String str) {
    return Map<String, dynamic>.from(Uri.parse("?$str").queryParameters);
  }

  static void sendTokenToServer(String token) {
    // إرسال رمز الجهاز إلى الخادم
    log('Token sent to server: $token');
  }
}
