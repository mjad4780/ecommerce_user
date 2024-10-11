import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../data/services/chats/chat_services.dart';
import 'build_items.dart';

class BuidMessageItem extends StatelessWidget {
  const BuidMessageItem(
      {super.key,
      required this.scrollController,
      required this.chatService,
      required this.sendemil});
  final ScrollController scrollController;
  final ChatServiceCustomer chatService;
  final String sendemil;

  returnListMessege(AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
    var start = snapshot.data!.docs;
    start.sort((a, b) => a["timestamp"].compareTo(b["timestamp"]));
    return start
        .map((doc) => BuildItems(doc: doc.data() as Map<String, dynamic>))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: chatService.getmessages(sendemil),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("error");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("loading...");
        }

        return ListView(
            controller: scrollController,
            children: returnListMessege(snapshot));
      },
    );
  }
}
