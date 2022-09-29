import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/home_badge/cubt/home_cubt.dart';
import 'package:untitled/home_badge/cubt/state.dart';
import 'package:untitled/home_badge/home_list_type.dart';
import 'package:untitled/notication/notfiacation.dart';
import 'package:untitled/qr_code_screen.dart';
import '../cache_helper/cache_helper.dart';
import '../discation/discussion.dart';
import '../main_widgt/search.dart';
import '../profile/profile_ui.dart';
import 'home_badge_card.dart';
class Home_Badge extends StatefulWidget {
   Home_Badge({Key? key}) : super(key: key);

  @override
  State<Home_Badge> createState() => _Home_BadgeState();
}

class _Home_BadgeState extends State<Home_Badge> {
  TextEditingController search_controler=TextEditingController();
  @override
  List type_list=[
    "all","plants","seeds","Tools"];
  List images=[
         "images/image1_card.png",
         "images/image2_card.png",
        'images/image3_card.png',
        'images/image4_card.png',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 51.0,bottom: 51.0),
                child: SizedBox(
                  height: 41,
                  width: 102,
                  child:Center(child: Image.asset('images/logo.png')),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: search(search_controler,290),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: Container(
                       width: 46.24,
                       height: 46.24,
                       alignment:Alignment.center ,
                       decoration:BoxDecoration(
                         color:Colors.green,
                         border: Border.all(
                             color:Colors.green,
                             width: .1,
                         ),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: const ImageIcon(
                        AssetImage("images/card_icon.png"),
                        color:Colors.white,
                        // color: Colors.green,
                  ),
                     ),
                   ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 380,
                  height: 34,
                  child: BlocProvider(
                    create:(context)=>home_badge_cubt()..get_plants(),
                    child: BlocConsumer<home_badge_cubt,home_state>(
                      listener:(c,i){},
                      builder: (context1,i) {
                        final cubt=home_badge_cubt.get(context1);
                        // CacheHelper.get(key: "token_pref");
                        return  ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                                 padding: const EdgeInsets.only(left: 25.0,),
                                 child: InkWell(
                                     onTap:(){
                                     },
                                     child: home_list_type("all"),
                                 ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,),
                              child: InkWell(
                                onTap:() async{
                                  await cubt.get_plants();
                                },
                                child: home_list_type("plants"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,),
                              child: InkWell(
                                onTap:() async{
                                 await cubt.get_seeds();
                                },
                                child: home_list_type("seeds"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,),
                              child: InkWell(
                                onTap:() async{
                                  await cubt.get_tools();
                                },
                                child: home_list_type("tools"),
                              ),
                            ),
                          ],
                        );
                        }),
                    ),
                  ),
                ),
                SizedBox(
                  height: 530,
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        childAspectRatio: 0.65,
                      ),
                      itemCount: images.length,
                      itemBuilder:(c,i){
                        return  Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: home_badge_card(images[i]),
                        );
                      }),
                ),
            ],
          ),
        floatingActionButton:FloatingActionButton(
          backgroundColor:Colors.green,
          onPressed:(){} ,
          child:const  Icon(Icons.home),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child:Container(
          height: 40,
          margin:const EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            child:Row(
          children: [
             Expanded(
               flex: 1,
                 child:InkWell(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) =>const Discussion(),
                     ));
                   },
                   child: ImageIcon(
                   AssetImage("images/tree_icon.png"),
               // color: Colors.green,
             ),
                 ),
             ),
            Expanded(
                flex: 1,
                child:InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScanScreen(),
                    ));
                  },
                  child: ImageIcon(
                    AssetImage("images/scan_icon.png"),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child:InkWell(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>const notfication(),
                    ));
                  },
                  child: ImageIcon(
                  AssetImage("images/notfication_image.png"),
            ),
                )
            ),
            Expanded(
                flex: 1,
                child:InkWell(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>const Profile_ui(),
                    ));
                  } ,
                  child: ImageIcon(
                  AssetImage("images/profile_icon1.png"),
            ),
                ),
            )
          ],
            ),
        )
    ) ,
    );
  }
}
