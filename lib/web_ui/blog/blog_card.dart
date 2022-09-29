import 'package:flutter/material.dart';

Widget blogCard(String image){
  return Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
       color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const[
         BoxShadow(
          color: Colors.black12,
          blurRadius: 8,
          offset: Offset(2,2),
        )
      ],
    ),
    child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.network("https://lavie.orangedigitalcenteregypt.com$image"),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: const[
                  Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Text("2 day ago",style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.green,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text("5 Simple Tips treat plant ",style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                  ),
                  Text(
                      """leaf,in batany ,any usual flattened green
outgrowth from the stem of
                   """,style:TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  )),
                ]
              ),
            ),
          ),
        ],
    ),
  );
}