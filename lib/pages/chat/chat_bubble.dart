// lib/pages/chat/chat_bubble.dart

import 'package:flutter/material.dart';
import 'package:my_chat/pages/chat/chat_bubble_model.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(this.model, {Key? key}) : super(key: key);

  final ChatBubbleModel model;

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment _bubbleLocation = MainAxisAlignment.end;
    // var profileImageWidget =
    //     Image.asset('assets/profiles/${model.profileImageName}');

    var profileImageWidget = CircleAvatar(
      backgroundImage: AssetImage('assets/profiles/${model.profileImageName}'),
    );

    var isCurrentUser = model.ownerId == '';

    if (isCurrentUser == false) {
      _bubbleLocation = MainAxisAlignment.start;
    }

    Widget? _content;

    if (model.isPhoto ?? false) {
      _content = Image(
        image: AssetImage('assets/contents/${model.photoImageName}'),
        width: 200,
        fit: BoxFit.cover,
      );
    } else {
      _content = Text(model.message);
    }

    Widget? usernameWidget;
    if (model.username != null) {
      usernameWidget = Text(model.username ?? '');
    }

    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: _bubbleLocation,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isCurrentUser == false ? profileImageWidget : Container(),
                Column(
                  children: [
                    usernameWidget ?? Container(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: _content,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
                isCurrentUser ? profileImageWidget : Container()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
