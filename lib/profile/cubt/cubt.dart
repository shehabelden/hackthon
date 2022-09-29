import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/dio/dio_get.dart';
import 'package:untitled/profile/cubt/state.dart';
class prof_cubt extends Cubit<main_state_prof>{
  prof_cubt() : super(init_state_prof());
  String username="";
  String iamge_url="";
  static prof_cubt get(context)=>BlocProvider.of(context);
  void get_prof() async{
    DioHelper.init();
    await DioHelper.getData(url:"user/me").then((value){
      username='${value.data["data"]["firstName"]} ${value.data["data"]["lastName"]}';
      iamge_url="${value.data["data"]["imageUrl"]}";
       // print(username);
    });
  }
}