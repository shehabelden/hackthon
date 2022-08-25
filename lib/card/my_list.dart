import 'package:flutter/material.dart';

import 'card.dart';
class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top:77.0),
        child: SizedBox(
          height:926,
          width:628,
          child:Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: InkWell(
                      child:Icon(Icons.arrow_back),
                      onTap:(){},
                    ),
                  ),
                  const  Padding(
                    padding: EdgeInsets.only(left: 135.0),
                    child: Align(
                      alignment:Alignment.center,
                      child: Text("My cart",
                      style:TextStyle(
                        fontSize: 20,
                        fontFamily: "Inter",
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:26.0),
                child: SizedBox(
                  height: 660,
                  width: 360,
                  child:ListView.builder(
                        itemCount:3 ,
                        itemBuilder: (c,i){
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 21.0),
                          child: cart("images/image1_card.png"),
                        );
                  }),
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}
