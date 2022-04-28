// lib/pages/signin/signin_page.dart

import 'package:flutter/material.dart';
import 'package:my_chat/pages/signin/user_model.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  UserModel _userModel = UserModel('', '');
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Image.asset('assets/nextflow.png'),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username:'),
                  TextFormField(
                    onSaved: (value) {
                      _userModel.username = value ?? '';
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill the form';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Passsword:'),
                  TextFormField(
                    onSaved: (newValue) {
                      _userModel.password = newValue ?? '';
                    },
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill the form';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        print('${_userModel.username} ${_userModel.password}');

                        Navigator.pushNamedAndRemoveUntil(
                            context, '/chat', (route) => false);
                      }
                    },
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
