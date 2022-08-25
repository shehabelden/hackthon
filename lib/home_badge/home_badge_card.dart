import 'package:flutter/material.dart';
Widget home_badge_card(String image){
      return Stack(
        children: [
          Container(
            height: 500,
            margin:const EdgeInsets.only(top: 60),
            width: 176,
            decoration:BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(
                width: .1,
                color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Image.asset(image,height: 200),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Column(
                     crossAxisAlignment:CrossAxisAlignment.start,
                     children: const[
                        Text("GARDENIA PLANT"),
                        Text("70 EGP"),
                     ],
                   ),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height:35,
                      width: 160,
                      alignment: Alignment.center,
                      decoration:BoxDecoration(
                        color:Colors.green,
                        border: Border.all(
                          width: .1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: (){
                        },
                          child: const Text("Add To Cart",),
                        ),
                    ),
                  ),
              ],
    ),
          ),
        ],
  );
}