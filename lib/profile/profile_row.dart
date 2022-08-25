import 'package:flutter/material.dart';
Widget profile_row(String row_name){
  return Container(
    height:80 ,
    width:358,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius:BorderRadius.circular(12),
      border: Border.all(
        width: .1,
      ),
    ),
    child:Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 10),
              child: Image.asset("images/profile_icon.png",),
            ),
             Text(row_name),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child:Icon(Icons.arrow_forward),

        )
      ],
    ),
  );

}