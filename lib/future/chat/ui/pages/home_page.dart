import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:flutter/material.dart';

import '../../data/services/chats/chat_services.dart';
import '../components/build_user_list_item_chat.dart';

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
      body: StreamBuilder(
          stream: chatService!.getUserStream(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Error');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Loading...');
            }
            return ListView(
                children: snapshot.data!
                    .map<Widget>((userData) => BuildUserListItemHomeChat(
                        userData: userData, chatService: chatService!))
                    .toList());
          }),
    );
  }
}
