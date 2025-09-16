import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/chat/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../components/buid_message_item.dart';
import '../components/build_user_input.dart';

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
    return BlocProvider(
      create: (context) =>
          getIt<ChatCubit>()..initializeMessagesStream(widget.sendemil),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("🔍 Admin"),
            centerTitle: true,
            elevation: 0,
            leading: GestureDetector(
              onTap: () => context.pop(),
              child: const Icon(Icons.arrow_back_ios,
                  size: 25, color: AppColor.darkOrange),
            )),
        body: Column(
          children: [
            Expanded(
                child: BuildMessageItem(
              scrollController: _scrollController,
              sendEmail: widget.sendemil,
            )),
            BuildUserInput(
                messagecontroller: _messagecontroller,
                myfocusnode: myfocusnode,
                widget: widget)
          ],
        ),
      ),
    );
  }
}
