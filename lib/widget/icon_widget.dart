import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconWidget extends StatelessWidget {
  IconWidget({super.key, required this.image, required this.text});
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
                children: [
                  Image.asset(image , height: 30,width: 30,fit: BoxFit.fill,),
                  SizedBox(width:5),
                  Text(text , style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ]
                
              ),
      ) ;     
 
  }
}