import 'package:flutter/material.dart';
import 'package:my_chat/pages/chat/chat_page.dart';
import 'package:my_chat/pages/friend/friend_page.dart';
import 'package:my_chat/pages/friend/friend_search_page.dart';
import 'package:my_chat/pages/home_page.dart';
import 'package:my_chat/pages/loading_page.dart';
import 'package:my_chat/pages/signin/signin_page.dart';
import 'package:my_chat/providers/chat_room_provider.dart';
import 'package:my_chat/providers/friend_provider.dart';
import 'package:provider/provider.dart';

void main() {
  print('Hello...');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return ChatRoomProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return FriendProvider();
          },
        )
      ],
      child: MaterialApp(
        title: 'My Chat',
        debugShowCheckedModeBanner: false,
        // home: LoadingPage(),
        routes: {
          '/': (context) {
            return FriendPage();
          },
          '/friend/search': (context) {
            return FriendSearchPage();
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
    ),
  );
}
