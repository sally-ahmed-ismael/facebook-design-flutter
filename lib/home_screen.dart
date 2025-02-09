

import 'package:facebook_app/widget/account_image_widget.dart';
import 'package:facebook_app/widget/icon_widget.dart';
import 'package:facebook_app/widget/icon_text_widget.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
 List <AccountImage> accountsList = [];
  HomeScreen({super.key}){
    initData();
    // print(accountsList.length);

  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("facebook", style: 
        TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Color(0xff1877F2) ) ,
        
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color(0xffC4C4C4),
            // borderRadius: BorderRadius.circular(100),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.search, size: 20, color: Colors.black,),
        ),
        SizedBox(width: 10,),
        Badge(
          backgroundColor: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 8),
          label: Text("+9", style: TextStyle(
            fontSize: 10,
          ),),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              // borderRadius: BorderRadius.circular(100),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.message, size: 20, color: Colors.black,),
          ),
        ),
        SizedBox(width: 20,),

      ],
      ) ,
      body: 
       SingleChildScrollView(
         child: Column(
            children: [
              Divider(color: Colors.grey, thickness: 2,),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child:Row(
                  children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("boy.png"),
                    ),
                  SizedBox(width: 20,),
                  Text("What’s on your mind?", style: TextStyle(fontSize: 16),),
         
                ])),
         
              
              SizedBox(height: 10,),
         
              Divider(color: Colors.grey, thickness: 1.5,),
         
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconWidget(image: "voice_chat1.png", text: "Live"),
                  Container(width: 1.5, height: 40, color: Colors.grey,),
                  IconWidget(image: "Group40.png", text: "Photo"),
                  Container(width: 1.5, height: 40, color: Colors.grey,),
                  IconWidget(image: "voice_chat2.png", text: "Room"),
                 ]),
         
              Divider(color: Colors.grey, thickness: 5,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: SingleChildScrollView(
                  scrollDirection :Axis.horizontal,
                  child: Row(
                    children:
                      // AccountImageWidget(image: "girl1.jpeg", text: ""),
                       accountsList.map(mapToCategory).toList(),
                  
                    
                  
                  ),
                ),
              ),
          
              Divider(color: Colors.grey, thickness: 6,),
         
              Column(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 10, right: 30, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("Ellipse.png"),
                          ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Margaret Sensei", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                               Text("1d", style: TextStyle(fontSize: 12, color: const Color.fromARGB(111, 0, 0, 0)),),
                               SizedBox(width: 5,),
                               Image.asset("world.png"),
                                                        
                              ],
                            ),
                            
                          ]
                          ), 
                          Spacer(),
                          Image.asset("dots.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Text("Some of you don’t have PVC’s and you don’t care. Some of you have, but are planning to stay awayon election day. By all means stay away, don’t vote. See every candidate as not deserving of your precious time and energy. Sleep at home all day and watch movies or cook. Some of you don’t have PVC’s and you don’t care. Some of you have, but are planning to stay awayon election day. By all means stay away, don’t vote. See every candidate as not deserving of your precious time and energy. ",
                    style: TextStyle(fontSize: 12),),
                  ),
                  Padding(
                   padding: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Image.asset("Group48.png"),
                        Image.asset("Group47.png"),
                        Text("78", style: TextStyle(fontSize: 12, color: const Color.fromARGB(111, 0, 0, 0)),),
                        Spacer(),
                        Text("2 comments", style: TextStyle(fontSize: 12, color: const Color.fromARGB(111, 0, 0, 0)),),
                        SizedBox(width: 5,),
                        Text("1 share", style: TextStyle(fontSize: 12, color: const Color.fromARGB(111, 0, 0, 0)),),
         
                        
                      ],
                    ),
                  ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconTextWidget(image: "like.png", text: "Like"),
                        IconTextWidget(image: "comment.png", text: "Comment"),
                        IconTextWidget(image: "share.png", text: "Share"),
                      ]),
         
              // Divider(color: Colors.grey, thickness: 5,),
                ],
              )
         
            ]
          
          ),
       ),
      );
      

  }



void initData(){
      accountsList.add(AccountImage(imagePath: "boy1.jpeg", name: "You "));
      accountsList.add(AccountImage(imagePath: "girl1.jpeg", name: "Harriet Joy "));
      accountsList.add(AccountImage(imagePath: "girl2.jpeg", name: "Danny Martin "));
      accountsList.add(AccountImage(imagePath: "girl3.jpeg", name: "Fatima Hus "));

    
  }

  AccountImageWidget mapToCategory(AccountImage accountImage){
    return AccountImageWidget(image:  accountImage.imagePath, text: accountImage.name) ;
  }


}
class AccountImage{ // data class
  String imagePath;
  String name;
  AccountImage ({required this.imagePath, required this.name});
}