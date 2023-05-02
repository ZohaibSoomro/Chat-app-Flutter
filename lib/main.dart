import 'package:chat_app/pages/login_signup_option.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat App',
      home: LoginSignupOption(),
      debugShowCheckedModeBanner: false,
    );
  }
}
