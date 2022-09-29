import 'package:flutter/material.dart';
import 'package:untitled/web_ui/home_badge_web/lists/first_list.dart';
import 'package:untitled/web_ui/home_badge_web/lists/three_list.dart';

import '../footer.dart';
import '../main_app_bar.dart';
import 'lists/scand_list.dart';
class Home_Badge_web extends StatefulWidget {
  const Home_Badge_web({Key? key}) : super(key: key);

  @override
  State<Home_Badge_web> createState() => _Home_Badge_webState();
}

class _Home_Badge_webState extends State<Home_Badge_web> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainAppBar(),
              SizedBox(
                width: 1100,
                height: 400,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                   const Text("Popular----\nCategories",
                   style:TextStyle(
                     color: Colors.black,
                     fontSize: 23,
                   ),
                   ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (c,i){
                        return Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: First_List(),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1100,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    const Text("Best seller----",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (c,i){
                            if(i%2==0){
                              return Padding(
                                padding: const EdgeInsets.only(left: 20.0,top: 50),
                                child:Scand_List(),
                              );
                            }else{
                              return Padding(
                                padding: const EdgeInsets.only(left: 20.0,bottom: 50),
                                child:Scand_List(),
                              );
                            }
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1100,
                height: 400,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    const Text("Blogs",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (c,i){
                            return Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Three_List(),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1100,
                height: 470,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Text("About us------",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex:1,
                            child: Text("""Welcome to La Vie, your number one source for planting. We're dedicated to giving you the very best of plants, with a focus on dependability, customer service and uniqueness.Founded in 2020, La Vie has come a long way from its beginnings in a  home office our passion for helping people and give them some advices about how to plant and take care of plants. We now serve customers all over Egypt, and are thrilled to be a part of the eco-friendly wing """,
                              maxLines: 7,
                              style:TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                          ),
                        ),
                        Expanded(
                          flex:1,
                          child: Stack(
                            children: [
                              Container(
                                height: 280,
                                width: 300,
                                margin:const EdgeInsets.only(top:25,left: 18),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.green,
                                    width: .2,
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              Image.asset("images/home_padge_web_1.png",
                                width: 300,
                                height: 300,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1100,
                height: 470,
                child: Row(
                  children: [
                    Expanded(
                        flex:1,
                        child: Image.asset("images/home_padge_web_2.png")),
                    Expanded(
                      flex:1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                           Text("Mobile Application------",
                            style:TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                            ) ,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                            child: SizedBox(
                                width: 470,
                                child: Text("""You can install La Vie mobile application and enjoy with new featurs, earn more points and get discounts 
Also you can scan QR codes in your plants’ pots so that you can get discount on everything in the website up to 70%""",
                                  style:TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                  maxLines: 4,
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
