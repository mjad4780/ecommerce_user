import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:flutter/material.dart';

import '../../data/services/chats/chat_services.dart';
import '../components/user_tile.dart';
import 'chat_page.dart';

class HomePageChat extends StatefulWidget {
  const HomePageChat({
    super.key,
  });

  @override
  State<HomePageChat> createState() => _HomePageChatState();
}

class _HomePageChatState extends State<HomePageChat> {
  ChatServiceCustomer? chatService;
  @override
  void initState() {
    super.initState();
    chatService = getIt<ChatServiceCustomer>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            'Home Page',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        body: UserTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      sendemil: 'mjad377@gmail.com',
                      chatService: chatService!,
                    ),
                  ));
            },
            text: 'Admin'));
  }
}
