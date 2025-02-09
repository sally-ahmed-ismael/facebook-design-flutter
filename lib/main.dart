import 'package:facebook_app/home_screen.dart';
// import 'package:facebook_app/login_screen.dart';
// import 'package:facebook_app/splach_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FacebookApp());
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplachScreen(),
      // home: LoginScreen(),
      home: HomeScreen()
      );

  }
}