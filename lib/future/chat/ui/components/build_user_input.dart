import 'package:ecommerce_user/future/chat/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/chat_page.dart';
import 'my_textfield.dart';

class BuildUserInput extends StatelessWidget {
  const BuildUserInput({
    super.key,
    required TextEditingController messagecontroller,
    required this.myfocusnode,
    required this.widget,
  }) : _messagecontroller = messagecontroller;

  final TextEditingController _messagecontroller;
  final FocusNode myfocusnode;
  final ChatPage widget;

  @override
  Widget build(BuildContext context) {
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
                onPressed: () async {
                  if (_messagecontroller.text.isNotEmpty) {
                    await context
                        .read<ChatCubit>()
                        .sendMessage(_messagecontroller.text, widget.sendemil);

                    _messagecontroller.clear();
                  }
                },
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
