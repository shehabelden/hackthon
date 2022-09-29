import 'package:flutter/material.dart';
Widget post(list_post,){
 return SizedBox(
   height: 380,
   width:360,
   child: Padding(
     padding: const EdgeInsets.only(left: 10.0,),
     child: Column(
       children: [
         Expanded(
             flex: 1,
             child: Container(
               child: Column(
                 children: [
                   Row(
                     children: [
                       Container(
                         child:Image.asset("images/not_test.png"),
                         height: 44,
                         width:44 ,
                         decoration: BoxDecoration(
                           shape:BoxShape.circle,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 9.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: const[
                             Text("Mayar Mohamed",style:TextStyle(
                               fontSize: 13,
                               fontFamily: "bold",
                             ),
                             ),
                             Text("a month ago",style:TextStyle(
                               fontSize: 11,
                               fontFamily:"Roboto",
                             ),),
                           ],
                         ),
                       ),
                     ],
                   ),
                     SizedBox(
                       width: double.infinity,
                       child: Column(
                         crossAxisAlignment:CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text('${list_post["title"]}',style:TextStyle(
                             fontSize: 18,
                             color:Colors.green,),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 8.0),
                             child: Text('${list_post["description"]}',
                               style:TextStyle(
                                 color: Colors.grey,
                                 fontSize: 15,
                               ),
                             ),
                           ),
                         ]
                       ),
                   ),
                 ],
               ),
             ),
         ),
         Expanded(
           flex: 2,
           child:Image.network(
               "https://lavie.orangedigitalcenteregypt.com${list_post["imageUrl"]}",
               width:  double.infinity,
               fit:BoxFit.fill ,
           ),
         ),
       ],
     ),
   ),
 );
}