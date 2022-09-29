import 'package:flutter/material.dart';
Widget postWeb(listpost){
   return SizedBox(
     width: 400,
    height: 400,
    child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                 height:50,
                  width: 50,
                  decoration:BoxDecoration(
                    border: Border.all(
                      width: .1
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.network("${listpost["user"]["imageUrl"]}",
                  fit: BoxFit.cover,
                    height:50,
                    width: 50,
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${listpost["user"]['firstName']}",
                       style:const TextStyle(
                         fontWeight: FontWeight.bold,
                          fontSize: 20,
                       ),
                   ),
                  const Text("from 7mada ago",style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ) ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
            children: [
              Text("${listpost["title"]}",style:const TextStyle(
          color: Colors.green,
          fontSize: 25,
        ),
              ),
              Text("${listpost["description"]}",
                  style:const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
              ),
            ],
        ),
        SizedBox(
          width: 800,
          height: 200,
          child:Image.network("https://lavie.orangedigitalcenteregypt.com${listpost["imageUrl"]}",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        )
      ],
    ),
   );
}