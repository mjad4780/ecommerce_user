import 'package:flutter/material.dart';

import '../components/user_tile.dart';
import 'chat_page.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            'Chat',
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
                    builder: (context) => const ChatPage(
                      sendemil: 'mjad377@gmail.com',
                    ),
                  ));
            },
            text: 'Admin'));
  }
}
