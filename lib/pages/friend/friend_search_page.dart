// lib/pages/friend/friend_search_page.dart

import 'package:flutter/material.dart';
import 'package:my_chat/providers/friend_provider.dart';
import 'package:provider/provider.dart';

class FriendSearchPage extends StatelessWidget {
  FriendSearchPage({Key? key}) : super(key: key);

  final TextEditingController _keywordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var listFriendSearch = context.watch<FriendProvider>().listFriendSearch;

    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _keywordController,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    var keyword = _keywordController.text;
                    print(keyword);

                    context.read<FriendProvider>().searchFriend(keyword);
                  },
                  icon: Icon(Icons.search),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listFriendSearch.length,
              itemBuilder: (BuildContext context, int index) {
                var matchFriend = listFriendSearch[index];

                return ListTile(
                  title: Text(matchFriend.username),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
