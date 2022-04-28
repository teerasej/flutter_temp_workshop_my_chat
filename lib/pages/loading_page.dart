// lib/pages/loading_page.dart

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
    with AfterLayoutMixin<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CircularProgressIndicator(),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            ),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    var isUserSignedIn = false;

    if (isUserSignedIn) {
      // Go to chat
      Navigator.pushNamedAndRemoveUntil(context, '/chat', (route) => false);
    } else {
      // Go to sign in
      Navigator.pushNamedAndRemoveUntil(context, '/signin', (route) => false);
    }
  }
}
