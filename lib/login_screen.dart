import 'package:facebook_app/home_screen.dart';
import 'package:facebook_app/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({super.key});

  // const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Image.asset("FacebookCover.png",
          width: double.infinity,
          height: 200, 
          fit: BoxFit.fill),
          SizedBox(height: 20,),
          TextFormFieldWidget(controller: emailController, hintString: "enter your email .. "),
          TextFormFieldWidget(controller: passwordController, hintString: "enter your password .. "),
          SizedBox(height: 20,),

          MaterialButton(
            onPressed: () {
            // print(emailController.text);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          color:  Color(0xff1877F2),
          minWidth: 344,
          padding: EdgeInsets.all(6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
          child: Text("login", style: 
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),),),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){

            },
            child: Text("Forgotten Password?", style: TextStyle(
              color: Color(0xff1877F2),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // Row(
          //   children: [Expanded(child: Divider(
          //     color: Colors.grey,
          //     thickness: 10,
          //     endIndent: 5,
          //     indent: 5,
          //   )),]
          // ),

          Spacer(),
          Row(
            children: [
              Expanded(child: Divider(
                endIndent: 10,
                indent: 50,
                color: Color(0xff606060),

              )),
              Text("OR"),
              Expanded(child: Divider(
                endIndent: 50,
                indent: 10,
               color: Color(0xff606060),
              )),
              SizedBox(height: 30,)
            ],
          ),

          MaterialButton(
            onPressed: () {
            // print(emailController.text);
          },
          color:  Color.fromARGB(255, 176, 204, 240),
          minWidth: 344,
          padding: EdgeInsets.all(6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
          child: Text("Create New Account", style: 
          TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xff1877F2),

          ),),),
          SizedBox(height: 30,)
        
        ],
      ),
    );
  }
}