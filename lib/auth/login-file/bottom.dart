import 'package:flutter/material.dart';
Widget buttom(String name,button_check,main){
  return Container(
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border:Border.all(
          width:.6,
          color: main,
        ),
      ),
      alignment: Alignment.center,
      child: Text(name,style: TextStyle(
          color: Colors.black,
      ),
      ),
  );
}