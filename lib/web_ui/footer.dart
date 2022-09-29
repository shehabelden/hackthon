import 'package:flutter/material.dart';
Widget Footer(){
  return Container(
    color: Colors.grey[100],
    height: 300,
    width: double.infinity,
    child:Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("Images/logo.png",
                width: 100,
                height: 20,
                ),
               const Text("LA VIE We're dedicated to giving you the very best of plants, with a focus on dependability",
                style: TextStyle(
                  color: Colors.grey,
                ),
                 maxLines: 2,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Sections",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize:15,
                  ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text("Home",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize:15,
                  )),
              ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("New",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:15,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Req to seller",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:15,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Contatnt Us",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize:15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Phone 01244522323",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:15,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Phone 01331920394",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:15,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Email : rawan@gmail.com",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:15,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("Address : 6 October city ,Giza ,egypt",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:15,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
               const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("SIGN FOR OUR NEWLETEER \n AND GET A 10% DISCOUNT",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize:15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 300,
                  child: Row(
                      children:[
                      const  Expanded(
                         flex: 2,
                         child:TextField(
                            decoration: InputDecoration(
                              hintStyle:TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                       ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap:(){},
                            child:Container(
                              width: 100,
                              height: 32,
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child:Text("SUBMIT"),
                            ),
                          ),
                        ),
                      ],
                    ),
                ) ,
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("OUR SOCIAL",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize:15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}