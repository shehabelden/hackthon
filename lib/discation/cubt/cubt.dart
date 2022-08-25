import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/dio/dio_get.dart';
import 'package:untitled/discation/cubt/state.dart';
class discussion_cubt extends Cubit<main_state_discation>{
  discussion_cubt() : super(init_state_discations());
   List discussion_list=[];
   bool button_check=true;
  static discussion_cubt get(context)=>BlocProvider.of(context);
  void get_descation() async{
    dio_helper.init();
    await dio_helper.get("/forums/me").then((value){
      discussion_list=value.data["data"];
      // print(discussion_list[0]["title"]);
    });
  }
}