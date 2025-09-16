import 'dart:developer';

import 'package:flutter/material.dart';

import '../../cubit/chat_cubit.dart';
import 'build_items.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class BuidMessageItem extends StatelessWidget {
//   const BuidMessageItem(
//       {super.key,
//       required this.scrollController,
//       required this.chatService,
//       required this.sendemil});
//   final ScrollController scrollController;
//   final ChatServiceCustomer chatService;
//   final String sendemil;

//   returnListMessege(AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
//     var start = snapshot.data!.docs;
//     start.sort((a, b) => a["timestamp"].compareTo(b["timestamp"]));
//     return start
//         .map((doc) => BuildItems(doc: doc.data() as Map<String, dynamic>))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: chatService.getmessages(sendemil),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return const Text("error");
//         }

//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Text("loading...");
//         }

//         return ListView(
//             controller: scrollController,
//             children: returnListMessege(snapshot));
//       },
//     );
//   }
// }

class BuildMessageItem extends StatelessWidget {
  const BuildMessageItem({
    super.key,
    required this.scrollController,
    required this.sendEmail,
  });

  final ScrollController scrollController;
  final String sendEmail;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatState>(
      // buildWhen: (previous, current) => ,
      listener: (context, state) {
        if (state is ChatError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.messege ?? 'An error occurred')),
          );
        } else if (state is MessageSentSuccess) {
          // التمرير إلى الأسفل عند إرسال رسالة جديدة
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (scrollController.hasClients) {
              scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            }
          });
        }
      },
      builder: (context, state) {
        if (state is ChatLoading) {
          log('loading');
          return const Center(child: CircularProgressIndicator());
        }

        if (state is ChatError) {
          log('erorr');

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: ${state.error.messege}'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () =>
                      context.read<ChatCubit>().reloadMessages(sendEmail),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        if (state is MessagesLoaded) {
          log('MessagesLoaded');

          final messages = state.messages;

          if (messages.isEmpty) {
            return const Center(
              child: Text('No messages yet. Start the conversation!'),
            );
          }

          // التمرير إلى الأسفل بعد تحميل الرسائل
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (scrollController.hasClients) {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            }
          });

          return ListView.builder(
            controller: scrollController,
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final doc = messages[index];
              final data = doc.data() as Map<String, dynamic>;
              return BuildItems(doc: data);
            },
          );
        }
        return const Center(child: Text('data'));
      },
    );
  }
}

// class BuildItems extends StatelessWidget {
//   final Map<String, dynamic> data;

//   const BuildItems({super.key, required this.data});

//   @override
//   Widget build(BuildContext context) {
//     final message = data['message'] as String? ?? '';
//     final senderEmail = data['senderemail'] as String? ?? '';
//     final timestamp = data['timestamp'] as Timestamp?;
//     final time = timestamp != null 
//         ? DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch)
//         : DateTime.now();

//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             message,
//             style: const TextStyle(fontSize: 16),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             'From: $senderEmail • ${_formatTime(time)}',
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey[600],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   String _formatTime(DateTime time) {
//     return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
//   }
// }