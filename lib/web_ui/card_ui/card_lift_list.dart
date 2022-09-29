import 'package:flutter/material.dart';
Widget CardList(){
  return Column(
      children: [
        Container(
          height: 350,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: .3,
            ),
            boxShadow: const[
              BoxShadow(
                color: Colors.black12,
                offset: Offset(2,2),
                blurRadius:8,
              ),
            ],
            borderRadius:BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 20),
                child: Row(
                  children: const[
                    Text("price",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 320.0),
                      child: Text('Sub Total',style: TextStyle(
                        color: Colors.grey,
                        fontSize:18,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 20),
                child: Row(
                  children: const[
                    Text("Shipping ",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                    Padding(
                      padding: EdgeInsets.only(left: 290.0),
                      child: Text('0.00 Egp',style: TextStyle(
                        color: Colors.grey,
                        fontSize:18,
                      )),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 20.0,right: 20,top: 20),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 20),
                child: Row(
                  children: const[
                    Text("Total",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    )),
                    Padding(
                      padding: EdgeInsets.only(left: 320.0),
                      child: Text('200 Egp ',style: TextStyle(
                        color: Colors.green,
                        fontSize:18,
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: InkWell(
                  child: Container(
                      width: 400,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                          width: .1,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      alignment: Alignment.center,
                      child:const Text("checkout")
                  ),
                ),
              )
            ],
          ),
        ),
         Container(
            child:Row(
              children:[
                Expanded(
                    flex: 3,
                    child: Container(
                      height: 60,
                      child:TextField(
                        decoration:InputDecoration(
                          border: InputBorder.none,
                          hintStyle:TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: .3,
                        ),
                        borderRadius:BorderRadius.circular(6),
                      ),
                    ),),
                SizedBox(
                  height: 120,
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: (){},
                      child:Container(
                        height:60,
                        decoration: BoxDecoration(
                          color:Colors.green,
                          border: Border.all(
                            color:Colors.green,
                            width: .3,
                          ),
                          borderRadius:BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Text("Apply"),
                      ),
                    ),
                ),
              ],
            )
        ),
      ]
  );
}