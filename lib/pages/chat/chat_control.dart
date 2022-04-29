// lib/pages/chat/chat_control.dart

import 'package:flutter/material.dart';
import 'package:my_chat/providers/chat_room_provider.dart';
import 'package:provider/provider.dart';

class ChatControl extends StatelessWidget {
  ChatControl({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Material(
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
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    onSaved: (newValue) {
                      message = newValue ?? '';
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'pleae fill form';
                      }
                      return null;
                    },
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
            ),
            IconButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  context.read<ChatRoomProvider>().addNewMessage(message);
                }
              },
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
