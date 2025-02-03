import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({super.key, required this.controller, required this.hintString});
  TextEditingController controller ;
  String hintString;

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: 
            TextFormField(
              controller: controller,
              // onChanged: (value){
              //   print(value);
              // },
              decoration: InputDecoration(
                hintText: hintString,
                hintStyle: TextStyle(color: Colors.grey,),
                // suffix: Icon(Icons.access_alarm_outlined)
                // fillColor: Colors.grey,
                // filled: true,
                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.blue , width: 2)
                ),
               /* enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.blue , width: 2)
                ),*/
                /*  errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red , width: 2)
                )*/
              ),
            ),
          );
  }
}