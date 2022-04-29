// lib/providers/chat_room_provider.dart

import 'package:flutter/material.dart';
import 'package:my_chat/pages/chat/chat_bubble_model.dart';

class ChatRoomProvider extends ChangeNotifier {
  // public
  List<ChatBubbleModel> chatBubbleModelList = [
    ChatBubbleModel('สวัสดีครับ', '', '90.jpeg'),
    ChatBubbleModel(
      'ว่าไง',
      '0',
      '48.jpeg',
      username: 'เนตร',
    ),
    ChatBubbleModel(
      '',
      '',
      '90.jpeg',
      isPhoto: true,
      photoImageName: 'content1.jpg',
    )
  ];

  void addNewMessage(String message) {
    var model = ChatBubbleModel(
      message,
      '',
      '90.jpeg',
    );

    chatBubbleModelList.add(model);
    notifyListeners();
  }
}
