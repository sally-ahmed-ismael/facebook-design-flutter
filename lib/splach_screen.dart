import 'dart:async';

import 'package:facebook_app/login_screen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget{
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}


class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
       super.initState();
       Timer(
        Duration(seconds: 1), ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()))
       );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Image.asset("Facebook.jpg" , height: 50, width: 50,),
          Spacer(),
          Text("from" , 
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff555151),
            ), textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("meta.png"),
                SizedBox(width: 3,),
                Text("meta" ,
                 style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff1877F2),
                 ) ,)
              ],
            ),
            SizedBox(height: 20,)

        ],
      ),
    );
  }
}