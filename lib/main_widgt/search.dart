import 'package:flutter/material.dart';
Widget search(TextEditingController _controller,double _width){
   return Container(
      width: _width,
     height: 46.24,
     decoration: BoxDecoration(
       color: Colors.grey.shade200,
       borderRadius:BorderRadius.circular(12),
       border:Border.all(
         width: .6,
         color: Colors.grey.shade200,
       ) ,
     ),
     child: TextField(
       controller:_controller,
       decoration:const InputDecoration(
         icon:Icon(Icons.search),
         hintText:"Search",
         border: InputBorder.none,
         hintStyle:TextStyle(
           fontSize: 20,
  ),
  ),
  ),
   );
}