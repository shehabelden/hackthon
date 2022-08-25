import 'package:flutter/material.dart';
Widget text_field(String word,TextEditingController text){
   return Column(
     children: [
       Align(
         alignment: Alignment.centerLeft,
         child: Padding(
           padding: const EdgeInsets.only(left: 35.0,bottom:10),
           child: Text(
             "${word}",style: TextStyle(
             fontSize: 17,
           ),
           ),
         ),
       ),
       Container(
         width: 337,
         height: 46.24,
         decoration: BoxDecoration(
           borderRadius:BorderRadius.circular(12),
           border:Border.all(
             color: Colors.black,
             width: .6,
           ) ,
         ),
         child: TextField(
           controller:text,
           decoration: InputDecoration(
             border: InputBorder.none,
             hintStyle:TextStyle(
               fontSize: 20,
             ),
           ),
         ),
       ),
     ],
   );
}