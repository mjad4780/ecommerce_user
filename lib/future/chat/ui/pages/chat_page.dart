import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:flutter/material.dart';

import '../../data/services/chats/chat_services.dart';
import '../components/chat_bubble.dart';
import '../components/my_textfield.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
    required this.sendemil,
  });
  final String sendemil;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messagecontroller = TextEditingController();

  //instance
  final ChatService _chatService = ChatService();

  // final AuthService _authService = AuthService();

  //textfield-focus

  FocusNode myfocusnode = FocusNode();
  @override
  void initState() {
    super.initState();
    myfocusnode.addListener(() {
      if (myfocusnode.hasFocus) {
        Future.delayed(const Duration(milliseconds: 500), () => scrollDown());
      }
    });
  }

  @override
  void dispose() {
    myfocusnode.dispose();
    _messagecontroller.dispose();
    super.dispose();
  }

  final ScrollController _scrollController = ScrollController();

  void scrollDown() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        curve: Curves.bounceIn, duration: const Duration(seconds: 1));
  }

  //sendmessages
  void sendmessages() async {
    if (_messagecontroller.text.isNotEmpty) {
      await _chatService.sendmessage(_messagecontroller.text);

      _messagecontroller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.sendemil,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(child: _buildMessageList()),
          _buidUserInput(),
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return StreamBuilder(
      stream: _chatService.getmessages(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("error");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("loading...");
        }

        return ListView(
            controller: _scrollController,
            children: snapshot.data!.docs
                .map((doc) => _buidMessageItem(doc))
                .toList());
      },
    );
  }

  Widget _buidMessageItem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    if (data['senderemail'] == widget.sendemil ||
        data['senderemail'] == _chatService.email) {
      bool isCurrentUser =
          data["email"] == getIt<CacheHelper>().getData(key: 'email');
      return Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          ChatBubble(isCurrentUser: isCurrentUser, message: data["message"]),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buidUserInput() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Expanded(
              child: MyTextfield(
            hinttext: "Send A Message",
            obscure: false,
            controller: _messagecontroller,
            focusNode: myfocusnode,
          )),
          Container(
            decoration:
                const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: sendmessages,
                icon: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
