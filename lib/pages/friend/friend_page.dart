// lib/pages/friend/friend_page.dart

import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/friend/search');
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
