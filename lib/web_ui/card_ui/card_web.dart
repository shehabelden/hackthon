import 'package:flutter/material.dart';
Widget cart_web(){
  return Container(
    height: 140,
    decoration: BoxDecoration(
      color: Colors.white,
      border:Border.all(
        color: Colors.white,
       width: .3,
      ),
      borderRadius:BorderRadius.circular(12),
      boxShadow: const[
        BoxShadow(
          color: Colors.black12,
          offset: Offset(2,2),
          blurRadius:8,
        ),
      ],
    ),
    child:Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 120),
          child: Row(
            children: [
              Image.asset("images/logo.png",
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
               Padding(
                 padding: const EdgeInsets.only(left:40.0),
                 child: Text("Indoor House plant ",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "bold",
              ),
              ),
               ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right:100),
          child: SizedBox(
            width: 40,
          ),
        ),
        Text("300",
        style: TextStyle(
          color: Colors.green,
          fontSize: 18,
        ),
        ),
      ],
    ),
  );
}