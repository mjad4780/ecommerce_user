import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../model/message.dart';

class ChatService {
  //instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String sendemail = 'mjad3777@gmail.com';
  String email = getIt<CacheHelper>().getData(key: 'email');

  //get user
  addUser() async {
    final Timestamp timestamp = Timestamp.now();
    //create new msg

    await _firestore.collection("Users").doc(email).collection("myUser").add({
      "email": email,
      "date": timestamp,
    });
  }

  Stream<List<Map<String, dynamic>>> getUserStream() {
    return _firestore
        .collection("chat_room")
        .doc(email)
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
  Future<void> sendmessage(message) async {
    final Timestamp timestamp = Timestamp.now();
    //create new msg
    Message newMessage = Message(
        email: email,
        senderemail: sendemail,
        message: message,
        timestamp: timestamp);

    await _firestore
        .collection("chat_room")
        .doc(email)
        .collection("messages")
        .add(newMessage.toMap());
  }

  //get message

  Stream<QuerySnapshot> getmessages() {
    return _firestore
        .collection("chat_room")
        .doc(email)
        .collection("messages")
        // .where('senderemail', whereIn: [email, sendemail])
        .orderBy("timestamp", descending: false)
        .snapshots();
  }
}
