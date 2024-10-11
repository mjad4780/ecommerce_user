import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderemail;
  final String email;
  final String message;
  final Timestamp timestamp;

  Message({
    required this.email,
    required this.senderemail,
    required this.message,
    required this.timestamp,
  });

  //convert to map
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'senderemail': senderemail,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
