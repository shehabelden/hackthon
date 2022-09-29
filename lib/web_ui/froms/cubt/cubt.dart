import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'package:untitled/web_ui/froms/cubt/state.dart';

class MainPostCubt extends Cubit<MainPostGet>{
   MainPostCubt() :super (InitPostGet());
   static MainPostCubt get(context)=>BlocProvider.of(context);
   List <dynamic> mainpostcubt=[];
   void mainPostget(){
      print("a");
     DioHelper.getData(url:"/forums").then((value){
        mainpostcubt=value.data["data"];
     });
     emit(PostGetAll());
   }
}