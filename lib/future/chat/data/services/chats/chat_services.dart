import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_user/core/helpers/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

// class ChatServiceCustomer {
//   //instance
//   final FirebaseFirestore firestore;
//   // String sendemail = 'mjad3777@gmail.com';
//   String email = getIt<CacheHelper>().getData(key: 'email');

//   ChatServiceCustomer({required this.firestore});

//   //send message
//   Future<void> sendmessage(String message, String sendemail) async {
//     final Timestamp timestamp = Timestamp.now();
//     //create new msg
//     Message newMessage = Message(
//         email: email,
//         senderemail: sendemail,
//         message: message,
//         timestamp: timestamp);

//     await firestore
//         .collection("chat_room")
//         .doc('mjad000@gmail.com')
//         .collection("messages")
//         .add(newMessage.toMap());
//   }

//   //get message

//   Stream<QuerySnapshot> getmessages(String sendemail) {
//     return firestore
//         .collection("chat_room")
//         .doc('mjad000@gmail.com')
//         .collection("messages")
//         .where('senderemail', whereIn: [sendemail, email])
//         .where('email', whereIn: [email, sendemail])
//         .orderBy("timestamp", descending: false)
//         .snapshots();
//   }
// }

class ChatService {
  final FirebaseFirestore firestore;
  String email = getIt<CacheHelper>().getData(key: 'email');

  ChatService({required this.firestore});

  Future<void> sendMessage(String message, String sendEmail) async {
    // التحقق من صحة البيانات
    if (message.trim().isEmpty) {
      throw Exception('Message cannot be empty');
    }

    if (sendEmail.isEmpty || email.isEmpty) {
      throw Exception('Email addresses are required');
    }

    final Timestamp timestamp = Timestamp.now();

    Message newMessage = Message(
      email: email,
      senderEmail: sendEmail,
      message: message.trim(),
      timestamp: timestamp,
    );

    await firestore
        .collection("chat_room")
        .doc('mjad000@gmail.com')
        .collection("messages")
        .add(newMessage.toMap());
  }

  Stream<QuerySnapshot> getMessages(String sendEmail) {
    return firestore
        .collection("chat_room")
        .doc('mjad000@gmail.com')
        .collection("messages")
        .where('senderemail', whereIn: [sendEmail, email])
        .where('email', whereIn: [email, sendEmail])
        .orderBy("timestamp", descending: false)
        .snapshots();
  }
}

class Message {
  final String email;
  final String senderEmail;
  final String message;
  final Timestamp timestamp;

  Message({
    required this.email,
    required this.senderEmail,
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'senderemail': senderEmail,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
