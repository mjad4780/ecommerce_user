import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_user/core/helpers/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../model/message.dart';

class ChatServiceCustomer {
  //instance
  final FirebaseFirestore firestore;
  // String sendemail = 'mjad3777@gmail.com';
  String email = getIt<CacheHelper>().getData(key: 'email');

  ChatServiceCustomer({required this.firestore});

  //get user
  // addUser() async {
  //   final Timestamp timestamp = Timestamp.now();
  //   //create new msg

  //   await _firestore.collection("Users").doc(email).collection("myUser").add({
  //     "email": email,
  //     "date": timestamp,
  //   });
  // }

  Stream<List<Map<String, dynamic>>> getUserStream() {
    return firestore
        .collection("chat_room")
        .doc('mjad000@gmail.com')
        .collection("messages")
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        //go through each user
        final user = doc.data();

        //return user
        return user;
      }).toList();
    });
  }

  //send message
  Future<void> sendmessage(String message, String sendemail) async {
    final Timestamp timestamp = Timestamp.now();
    //create new msg
    Message newMessage = Message(
        email: email,
        senderemail: sendemail,
        message: message,
        timestamp: timestamp);

    await firestore
        .collection("chat_room")
        .doc('mjad000@gmail.com')
        .collection("messages")
        .add(newMessage.toMap());
  }

  //get message

  Stream<QuerySnapshot> getmessages(String sendemail) {
    return firestore
        .collection("chat_room")
        .doc('mjad000@gmail.com')
        .collection("messages")
        .where('senderemail', whereIn: [sendemail, email])
        .where('email', whereIn: [email, sendemail])
        .orderBy("timestamp", descending: false)
        .snapshots();
  }
}
