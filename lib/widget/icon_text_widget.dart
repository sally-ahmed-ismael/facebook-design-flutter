import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  IconTextWidget({super.key, required this.image, required this.text});
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
                children: [
                  Image.asset(image , height: 20,width: 20,fit: BoxFit.fill,),
                  SizedBox(width:5),
                  Text(text , style: TextStyle(fontSize: 13, color: const Color.fromARGB(111, 0, 0, 0))),

                ]
                
              ),
      ) ;     
 
  }
}