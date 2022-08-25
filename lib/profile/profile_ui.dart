import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/profile/cubt/cubt.dart';
import 'package:untitled/profile/cubt/state.dart';
import 'package:untitled/profile/profile_row.dart';
class Profile_ui extends StatefulWidget {
  const Profile_ui({Key? key}) : super(key: key);
  @override
  State<Profile_ui> createState() => _Profile_uiState();
}
class _Profile_uiState extends State<Profile_ui> {
  @override
  List prof_row=["Change Name","Change Email"];
  Widget build(BuildContext context) {
    return BlocProvider(
      create:((context) =>prof_cubt()),
      child: BlocConsumer<prof_cubt,main_state_prof>(
        listener:(c,i){} ,
        builder: (context,i) {
          final cubt=prof_cubt.get(context);
          cubt.get_prof();
          return Material(
            child:Padding(
            padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                height: 900,
                child: Stack(
                  children: [
                     SizedBox(
                       height:350 ,
                        child: Stack(
                          children: [
                            Image.network("${cubt.iamge_url}",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                              alignment: Alignment.center,
                            ),
                            Container(
                              color:Colors.black.withOpacity(.8),
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: const[
                                Icon(Icons.arrow_back,color: Colors.white),
                                Icon(Icons.keyboard_control,color: Colors.white),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius:80,
                                    backgroundColor: Colors.blue,
                                    backgroundImage: NetworkImage(cubt.iamge_url,
                                    ),
                                  ),
                                   SizedBox(height:14),
                                   Text("${cubt.username}",style:TextStyle(
                                    color: Colors.white,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 500,
                        width: 428,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(12),
                          border: Border.all(
                            width: .1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60.0,left: 20),
                              child: Container(
                                height:80 ,
                                width:358,
                                decoration:BoxDecoration(
                                  color: Colors.green.shade100,
                                  borderRadius:BorderRadius.circular(12),
                                ),
                                child:Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,right: 20),
                                      child: Image.asset("images/Image_mokf2a.png",
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                   const Text("You have 30 points",
                                      style:TextStyle(
                                        fontSize: 15,
                                      ),
                                   ),
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(top: 10.0,left: 23),
                              child: Text("Edit Profile ",style:TextStyle(
                                fontSize: 20,
                                fontWeight:FontWeight.bold,
                              ),
                              ),
                            ),
                            SizedBox(
                              height:317,
                              width:358,
                              child: ListView.builder(
                                  itemCount:prof_row.length,
                                  itemBuilder: (c,i){
                                return Padding(
                                  padding: const EdgeInsets.only(left: 20.0,bottom: 26),
                                  child: profile_row(prof_row[i]),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
