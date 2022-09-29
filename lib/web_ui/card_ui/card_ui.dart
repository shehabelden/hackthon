import 'package:flutter/material.dart';
import 'package:untitled/web_ui/card_ui/card_lift_list.dart';
import 'package:untitled/web_ui/card_ui/card_web.dart';
import '../main_app_bar.dart';
class CardLis extends StatefulWidget {
  const CardLis({Key? key}) : super(key: key);

  @override
  State<CardLis> createState() => _CardLisState();
}

class _CardLisState extends State<CardLis> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
            children: [
              MainAppBar(),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 1300,
                height: 500,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                              itemCount: 3,
                              itemBuilder:(c,i){
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0,right: 20),
                                  child: cart_web(),
                                );
                              }),
                    ),
                    Expanded(
                        flex: 2,
                        child:Padding(
                          padding: const EdgeInsets.only(left:45,top: 0),
                          child: CardList(),
                        ),
                    ),
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}
