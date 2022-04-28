// lib/pages/chat/chat_page.dart

import 'package:flutter/material.dart';
import 'package:my_chat/pages/chat/chat_bubble.dart';
import 'package:my_chat/pages/chat/chat_bubble_model.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatBubble(ChatBubbleModel('สวัสดีครับ', '', '90.jpeg')),
                ChatBubble(ChatBubbleModel(
                  'ว่าไง',
                  '0',
                  '48.jpeg',
                  username: 'เนตร',
                )),
                ChatBubble(ChatBubbleModel(
                  '',
                  '',
                  '90.jpeg',
                  isPhoto: true,
                  photoImageName: 'content1.jpg',
                ))
              ],
            ),
          ),
          Material(
            color: Colors.blue,
            child: Container(
              // color: Colors.blue,
              height: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
