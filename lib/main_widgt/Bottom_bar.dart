import 'package:flutter/material.dart';
Widget Bottom_app_bar(){
     return Container(
       height:64,
       width:428,
       child: Row(
         children: [
           Container(
               width:128,
               decoration: BoxDecoration(
               color: Colors.amber,
               border: Border(
                 left: BorderSide(
                   width: 3.0,
                 ),
             ),
               borderRadius: BorderRadius.only(topRight:Radius.circular(32))
           )),
           Container(
               width:128,
               decoration: BoxDecoration(
                   color: Colors.blue,
                   shape: BoxShape.circle,
               )),
           Container(
               width:128,
               decoration: BoxDecoration(
                   color: Colors.black,
                   border: Border(
                     left: BorderSide(
                       width: 3.0,
                     ),
                   ),
                   borderRadius: BorderRadius.only(topLeft:Radius.circular(32))
               )),
         ],
       ),
     );
}