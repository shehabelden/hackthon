import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
Widget MainAppBar(){
  return Builder(
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top:0.0,left:20),
        child: Container(
          color: Colors.white,
          width: double.infinity,
            height: 80,
              child: Row(
                children: [
                   SizedBox(
                        height: 40,
                        width: 121,
                        child:Image.asset("images/logo.png"),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0,right: 140),
                    child: SizedBox(
                      width: 675,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap:(){
                                  context.beamToNamed('shop');
                                },
                                child:const Center(
                                  child: Text('home',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                  ),
                                  ),
                                ),
                              ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap:(){
                                context.beamToNamed('shop');
                              },
                              child:const Center(
                                child: Text('shop',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap:(){
                                context.beamToNamed('blog');
                              },
                              child:const Center(
                                child: Text('blog',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap:(){
                                context.beamToNamed('/cart');
                              },
                              child:const Center(
                                child:  Text('about',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap:(){
                                context.beamToNamed("/community");
                              },
                              child:const  Center(
                                child: Text('Community',style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:(){},
                    child: Container(
                      height: 40,
                       width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: .3,
                          color: Colors.green,
                        ),
                      ),
                      alignment: Alignment.center,
                      child:const Text('Sign_up',style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                      ),
                    ),
                  )
                ],
              ),
        ),
      );
    }
  );
}