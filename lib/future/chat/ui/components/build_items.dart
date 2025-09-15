import 'package:flutter/material.dart';

import '../../../../core/helpers/cache_helper.dart';
import '../../../../core/get_it/get_it.dart';
import 'chat_bubble.dart';

class BuildItems extends StatelessWidget {
  const BuildItems({
    super.key,
    required this.doc,
  });
  final Map<String, dynamic> doc;
  @override
  Widget build(BuildContext context) {
    bool isCurrentUser =
        doc["email"] == getIt<CacheHelper>().getData(key: 'email');
    return Column(
      crossAxisAlignment:
          isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        ChatBubble(isCurrentUser: isCurrentUser, message: doc["message"]),
      ],
    );
  }
}
