import 'package:flutter/material.dart';

class AccountImageWidget extends StatelessWidget {
   AccountImageWidget({super.key , required this.image, required this.text});
   String image;
   String text;   
  @override
  Widget build(BuildContext context) {
    return Row(
            children:[
             Stack(
                
                children: [
                   ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(image, width: 90, height: 150, fit: BoxFit.fill, )),
                   Positioned(
                    top:5,
                    left: 5,
                     child:
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          width:40,
                          height: 40,
                          decoration: BoxDecoration(color: Color(0xff1877F2),shape: BoxShape.circle,),
                        ),
                        CircleAvatar(radius: 18,
                             backgroundImage: AssetImage(image),),
                       
                  ]),
                   ),
                    Positioned
                        ( bottom: 5,
                          left: 5,
                          child: Text(text, style: TextStyle(
                            fontSize: 12,
                            color: Colors.white),)),
                  
                   
                   ]),
    
                 SizedBox(width: 10)]);
  }
}