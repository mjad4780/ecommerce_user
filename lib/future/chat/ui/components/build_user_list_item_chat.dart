import 'package:ecommerce_user/future/chat/ui/components/user_tile.dart';
import 'package:flutter/material.dart';

import '../../data/services/chats/chat_services.dart';
import '../pages/chat_page.dart';

class BuildUserListItemHomeChat extends StatelessWidget {
  const BuildUserListItemHomeChat(
      {super.key, required this.userData, required this.chatService});
  final Map<String, dynamic> userData;
  final ChatServiceCustomer chatService;

  @override
  Widget build(BuildContext context) {
    if (userData["email"] != chatService.email) {
      return UserTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(
                    sendemil: userData["email"],
                    chatService: chatService,
                  ),
                ));
          },
          text: userData["email"]);
    } else {
      return const SizedBox.shrink();
    }
  }
}
