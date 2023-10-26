import 'package:flutter/material.dart';
import 'package:teacher_app/models/chat_model.dart';

class ChatCard extends StatelessWidget {
  final ChatModel chat;
  const ChatCard({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.amber,
      ),
      title: Text(chat.username),
      subtitle: Text(chat.message),
    );
  }
}
