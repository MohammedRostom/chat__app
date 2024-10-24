import 'package:Chat_app/features/MainHome/peresentaion/view/chats/widget/chat_item.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class chats_screen extends StatelessWidget {
  const chats_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:
            Column(children: List.generate(60, (index) => const Chatitem())));
  }
}
