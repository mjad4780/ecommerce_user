import 'package:flutter/material.dart';

import '../../data/services/chats/chat_services.dart';
import '../components/buid_message_item.dart';
import '../components/build_user_input.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    super.key,
    required this.sendemil,
    required this.chatService,
  });
  final String sendemil;
  final ChatServiceCustomer chatService;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messagecontroller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  FocusNode myfocusnode = FocusNode();
  @override
  void initState() {
    super.initState();
    myfocusnode.addListener(hundleanimation);
  }

  @override
  void dispose() {
    _messagecontroller.dispose();
    myfocusnode.removeListener(hundleanimation);
    myfocusnode.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  void hundleanimation() {
    if (myfocusnode.hasFocus) {
      Future.delayed(
          const Duration(milliseconds: 500),
          () => _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              ));
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
          Expanded(
              child: BuidMessageItem(
            scrollController: _scrollController,
            chatService: widget.chatService,
            sendemil: widget.sendemil,
          )),
          BuildUserInput(
              messagecontroller: _messagecontroller,
              myfocusnode: myfocusnode,
              widget: widget)
        ],
      ),
    );
  }
}
