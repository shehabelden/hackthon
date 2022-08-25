import 'package:flutter/material.dart';
Widget cart(String image){
  return Container(
    height: 161,
    decoration:BoxDecoration(
      color:Colors.white,
      border: Border.all(
        width: 0.1
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child:Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(image,
            height: 133,
            width: 146,
          ),
        ),
       Expanded(
         flex: 1,
         child: Column(
           mainAxisAlignment:MainAxisAlignment.center ,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: const[
             Padding(
               padding: EdgeInsets.only(bottom: 16.0),
               child: Text("Cactus plant",style:TextStyle(
                 fontSize: 18,
                 fontFamily: "Roboto",
               ),),
             ),
             Text("200 EGP",style:TextStyle(
               fontSize: 15.23,
               fontFamily: "Roboto",
               color: Colors.green,
             ),)
           ],
         ),
       ),
        const Expanded(
          flex: 1,
          child:  Padding(
            padding: EdgeInsets.only(bottom: 20.0,right: 24),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ImageIcon(
                AssetImage("images/Vector.png"),
                color:Colors.green,
              ),
            ),
          ),
        ),
      ],
    ) ,
  );
}