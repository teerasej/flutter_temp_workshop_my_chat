import 'package:flutter/material.dart';
import 'package:my_chat/pages/chat/chat_page.dart';
import 'package:my_chat/pages/home_page.dart';
import 'package:my_chat/pages/loading_page.dart';
import 'package:my_chat/pages/signin/signin_page.dart';

void main() {
  print('Hello...');
  runApp(
    MaterialApp(
      title: 'My Chat',
      debugShowCheckedModeBanner: true,
      // home: LoadingPage(),
      routes: {
        '/': (context) {
          return ChatPage();
        },
        // '/': (context) {
        //   return LoadingPage();
        // },
        '/signin': (context) {
          return SignInPage();
        },
        '/chat': (context) {
          return ChatPage();
        }
      },
    ),
  );
}
