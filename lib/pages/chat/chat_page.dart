// lib/pages/chat/chat_page.dart

import 'package:flutter/material.dart';
import 'package:my_chat/pages/chat/chat_bubble.dart';
import 'package:my_chat/pages/chat/chat_bubble_model.dart';
import 'package:my_chat/pages/chat/chat_control.dart';
import 'package:my_chat/providers/chat_room_provider.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var chatBubbleModelList =
        context.watch<ChatRoomProvider>().chatBubbleModelList;

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatBubbleModelList.length,
              itemBuilder: (BuildContext context, int index) {
                var model = chatBubbleModelList[index];
                return ChatBubble(model);
              },
            ),
          ),
          ChatControl()
        ],
      ),
    );
  }
}
