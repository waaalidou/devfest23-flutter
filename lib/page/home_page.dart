import 'package:flutter/material.dart';
import 'package:teacher_app/models/chat_model.dart';
import 'package:teacher_app/widgets/chat_card.dart';
import 'package:teacher_app/widgets/large_text.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'Home-Page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LargeText(text: 'Chats'),
                  Image.asset(
                    'assets/images/undraw_Chatting_re_j55r 1.png',
                    height: 95,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.separated(
                  primary: true,
                  itemBuilder: (context, index) =>
                      ChatCard(chat: dummyData[index]),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: dummyData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
