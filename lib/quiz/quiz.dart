import 'package:flutter/material.dart';
class quiz extends StatefulWidget {
  const quiz({Key? key}) : super(key: key);

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  @override
  List q_list=[
    "The user experience is how the developer feels about a user.",
    "The user experience is how the user feels about interacting with or experiencing aproduct.",
    "The user experience is the attitude the UX designer has about a product.",
  ];
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 900,
        width: 400,
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65.0),
                child:Text("Course Exam",style: TextStyle(
                  fontSize: 19,
                  fontFamily: "Roboto",
                )),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 65.0,left:32 ),
              child: Align(
                alignment:Alignment.centerLeft,
                child: Container(
                  child:Text("Question",style:TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ) ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0,left:32),
              child: Align(
                alignment:Alignment.centerLeft,
                child: Container(
                  child:Text("What is the user experience?",style:TextStyle(
                    fontSize: 20,
                  ) ,),
                ),
              ),
            ),
            Container(
              width: 400,
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: q_list.length,
                  itemBuilder:(c,i){
              return Padding(
                padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                child: Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Container(
                        width: 310,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(q_list[i],
                          style:TextStyle(
                            fontSize:15,
                            fontFamily:"Roboto",
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:4.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 2
                              )
                          )
                          ),
                      ) ,
                    ],
                  ),
                  decoration:BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 4
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
              );
              }
              ),
            )
          ],
        ),
      ),
    );
  }
}
