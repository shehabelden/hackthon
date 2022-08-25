import 'package:flutter/material.dart';
class notfication extends StatefulWidget {
  const notfication({Key? key}) : super(key: key);

  @override
  State<notfication> createState() => _notficationState();
}

class _notficationState extends State<notfication> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:Container(
        height: 900,
        width: 400,
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text("Notification"),
              ),
            ),
            Container(
              height: 800,
              width: 400,
              child:ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (c,i){
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child:Image.asset("images/not_test.png") ,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                child:Text("Joy Arnold left 6 comments on Your Post"),
                              ),
                            ),
                          ],
                ),
                         Padding(
                           padding: const EdgeInsets.only(left: 80.0,),
                           child: Align(
                              alignment: Alignment.topLeft,
                             child: Container(
                              child:Text("Yesterday at 11:42 PM",
                                  style:TextStyle(
                                    color: Colors.grey,
                                  ), ),
                        ),
                           ),
                         ),
                      ],
                    );
              })
            ),
          ],
        ),
      ) ,
    );
  }
}
