import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/auth/login-file/bottom.dart';
import 'package:untitled/discation/cubt/cubt.dart';
import 'package:untitled/discation/cubt/state.dart';
import 'package:untitled/main_widgt/like_coment.dart';
import '../main_widgt/post.dart';
import '../main_widgt/search.dart';
class Discussion extends StatefulWidget {
  const Discussion({Key? key}) : super(key: key);
  @override
  State<Discussion> createState() => _DiscussionState();
}
List name=["allpav","my fav"];
class _DiscussionState extends State<Discussion> {
  Object mainColor = Colors.green;
  @override
  TextEditingController _search = TextEditingController();
  Widget build(BuildContext context) {
    return BlocProvider(
      create:((context) =>discussion_cubt()) ,
      child: BlocConsumer<discussion_cubt,main_state_discation>(
        listener:(context,i){},
        builder: (context2,i) {
         final cubt=discussion_cubt.get(context2);
          cubt.get_descation();
          return Scaffold(
            appBar: AppBar(
              leading:Icon(Icons.arrow_back_ios,color: Colors.black),
              backgroundColor: Colors.white,
              centerTitle: true,
              elevation: 0,
              title: Text("Discussion Forums",style: TextStyle(
                color: Colors.black
              )),
              bottom:PreferredSize(
                 preferredSize:Size.fromHeight(56),
                child:search(_search,360),
              ),
            ),
            body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,top: 10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 26,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:20.0),
                              child: InkWell(
                                  child: buttom(name[0],cubt.button_check,mainColor),
                                  onTap:(){
                                    cubt.button_check=true;
                                    if(cubt.button_check==false){
                                    mainColor=Colors.white;
                                  }
                                  },
                              ),
                            ),
                            InkWell(
                              child: buttom(name[1],cubt.button_check,mainColor),
                              onTap:(){
                                cubt.button_check=false;
                                if(cubt.button_check==true){
                                  mainColor=Colors.white;
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 648,
                    width: 382,
                    child:ListView.builder(
                       itemCount: cubt.discussion_list.length,
                        itemBuilder:(c,i){
                      return  Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Column(
                          children: [
                            post(cubt.discussion_list[i]),
                            like_comment(),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            floatingActionButton:FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor:Colors.green,
              onPressed:(){} ,
            ),
            floatingActionButtonLocation:FloatingActionButtonLocation.endFloat ,
          );
        }
      ),
    );
  }
}
