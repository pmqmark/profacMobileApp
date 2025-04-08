import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/infrastructure/fcm/fcm_repo.dart';
import 'package:profac/main.dart';

class FCMService {
  static final FCMService _instance = FCMService._internal();
  factory FCMService() => _instance;
  FCMService._internal();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Channel details
  final AndroidNotificationChannel _channel = const AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
  );

  Future<void> initNotifications() async {
    // Request permission
    await _requestPermission();

    // Initialize local notifications
    await _initializeLocalNotifications();

    // Set up foreground message handler
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle notification open events
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationOpen);

    // Check for initial messages (app opened from terminated state)
    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      _handleInitialMessage(initialMessage);
    }
  }

  Future<void> _requestPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      log('User granted provisional permission');
    } else {
      log('User declined or has not accepted permission');
    }
  }

  Future<void> _initializeLocalNotifications() async {
    // Android initialization
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/launcher_icon');

    // iOS initialization
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    // Initialize settings
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    // Initialize plugin
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTap,
    );

    // Create the Android notification channel
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    // Update iOS foreground notification presentation options
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void _handleForegroundMessage(RemoteMessage message) {
    log('Received foreground message: ${message.messageId}');

    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;

    // Show local notification for Android
    if (notification != null && android != null && !kIsWeb) {
      _flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            channelDescription: _channel.description,
            icon: 'launch_background',
          ),
        ),
        payload: jsonEncode(message.data),
      );
    }

    // For iOS, the system already shows the notification
  }

  void _handleNotificationOpen(RemoteMessage message) {
    log('User tapped on notification (opened app): ${message.messageId}');
    _processNotificationData(message.data);
  }

  void _handleInitialMessage(RemoteMessage message) {
    log('App opened from terminated state via notification: ${message.messageId}');
    _processNotificationData(message.data);
  }

  void _processNotificationData(Map<String, dynamic> data) {
    // Handle different notification types based on data
    if (data.containsKey('type')) {
      String type = data['type'];

      switch (type) {
        case 'booking':
          if (data.containsKey('bookingId')) {
            _navigateToBookingDetails(data['bookingId']);
          }
          break;
        case 'offer':
          _navigateToOffers();
          break;
        case 'chat':
          if (data.containsKey('chatId')) {
            _navigateToChat(data['chatId']);
          }
          break;
        default:
          _navigateToHome();
      }
    } else {
      _navigateToHome();
    }
  }

  void _navigateToBookingDetails(String bookingId) {
    // Navigate to booking details screen with the booking ID
    // You'll need to implement the actual navigation
    // Example: navigatorKey.currentState?.pushNamed('/booking_details', arguments: bookingId);
    log('Navigate to booking details: $bookingId');
  }

  void _navigateToOffers() {
    // Navigate to offers screen
    // Example: navigatorKey.currentState?.pushNamed('/offers');
    log('Navigate to offers');
  }

  void _navigateToChat(String chatId) {
    // Navigate to chat screen with the chat ID
    // Example: navigatorKey.currentState?.pushNamed('/chat', arguments: chatId);
    log('Navigate to chat: $chatId');
  }

  void _navigateToHome() {
    // Navigate to home screen
    navigatorKey.currentState?.pushNamed('/home');
  }

  // For iOS versions prior to 10
  void _onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) {
    // Handle iOS local notifications (for iOS < 10)
    log('Received iOS notification: $title');
  }

  void _onNotificationTap(NotificationResponse notificationResponse) {
    // Handle notification tap
    final String? payload = notificationResponse.payload;
    if (payload != null) {
      try {
        final data = jsonDecode(payload) as Map<String, dynamic>;
        _processNotificationData(data);
      } catch (e) {
        log('Error parsing notification payload: $e');
      }
    }
  }

  // Method to subscribe to topics
  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
    log('Subscribed to topic: $topic');
  }

  // Method to unsubscribe from topics
  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
    log('Unsubscribed from topic: $topic');
  }

  // Get FCM token
  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }
}
