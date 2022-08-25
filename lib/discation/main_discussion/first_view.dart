import 'package:flutter/material.dart';
Widget first_view(String name,int pading){
  return SizedBox(
    width:428,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkWell(
            child:Icon(Icons.arrow_back_ios),
            onTap:(){},
          ),
        ),
          Padding(
          padding:const EdgeInsets.only(left: 90.0),
          child: Align(
            alignment:Alignment.center,
            child: Text(name,
              style:const TextStyle(
                fontSize: 20,
                fontFamily: "Inter",
              ),
            ),
          ),
        ),
      ],
    ),
  );
}