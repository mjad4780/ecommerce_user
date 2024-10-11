import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:flutter/material.dart';
import '../../../../core/function/alert_dialog.dart';
import '../../services/chats/chat_services.dart';
import '../components/user_tile.dart';
import 'chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //chat_services & auth instances
  final ChatService _chatService = getIt<ChatService>();

  // final AuthService _authService = AuthService();
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
        body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            testAlert(context, 'warning', "Do you went to exit the app");
          },
          child: _buildUserList(),
        ));
  }

  //build user list except the logged in user
  Widget _buildUserList() {
    return StreamBuilder(
        stream: _chatService.getUserStream(),
        builder: (context, snapshot) {
          //error
          if (snapshot.hasError) {
            return const Text('Error');
          }
          //loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Loading...');
          }
          //user
          return ListView(
              children: snapshot.data!
                  .map<Widget>(
                      (userData) => _buildUserListItem(userData, context))
                  .toSet()
                  .toList());
        });
  }

  //build induvidual item
  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if (userData["email"] != _chatService.email) {
      _chatService.email = userData["email"];
      return userData["email"] != 'mjad3777@gmail.com'
          ? UserTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(
                        sendemil: userData["email"],
                      ),
                    ));
              },
              text: userData["email"])
          : const SizedBox.shrink();
    } else {
      return const SizedBox.shrink();
    }
  }
}
