// lib/pages/chat/chat_bubble_model.dart

class ChatBubbleModel {
  String message;
  String ownerId;
  String profileImageName;
  String? username;

  bool? isPhoto = false;
  String? photoImageName;

  ChatBubbleModel(this.message, this.ownerId, this.profileImageName,
      {this.isPhoto, this.photoImageName, this.username});
}
