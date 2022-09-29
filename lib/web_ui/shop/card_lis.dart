import 'package:flutter/material.dart';
Widget CardList(list_of_card){
  return Column(
    children: [
      Expanded(
        flex: 1,
          child: Image.network("https://lavie.orangedigitalcenteregypt.com${list_of_card["imageUrl"]}",
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.fill,
          )
      ),
      Expanded(
        flex: 1,
          child:SizedBox(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 20),
                          child: Text(list_of_card['name'],
                          style:const TextStyle(
                            fontSize: 20
                          ),
                          ),
                        )
                    ),
                   const Expanded(
                        flex: 1,
                        child: Text(""),
                    ),
                  ],
                ),
                Expanded  (
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(list_of_card['description'],
                      style:const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: InkWell(
                     child: Center(
                       child: Container(
                         width: 300,
                         height: 150,
                         decoration:BoxDecoration(
                             color: Colors.green,
                             border: Border.all(
                             width: .1,
                           ),
                           borderRadius: BorderRadius.circular(6),
                         ),
                         alignment: Alignment.center,
                         child:const Text("add"),
                       ),
                     ),
                  ),
                ),
               const SizedBox(
                  height: 40,
                ),
              ],
            ) ,
          ),
      ),
    ],
  );
}