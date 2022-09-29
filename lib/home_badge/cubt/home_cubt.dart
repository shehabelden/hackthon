import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:untitled/home_badge/cubt/state.dart';
import '../../Dio/dio_get.dart';
class home_badge_cubt extends Cubit<home_state>{
   home_badge_cubt() : super(home_init());
   static  home_badge_cubt get(context)=>BlocProvider.of(context);
   List home_list=[];
    get_seeds() async{
     await DioHelper.getData(url:"seeds").then((value){
         home_list=value.data["data"];
      });
      emit(get_sleeds_state());
   }
    get_tools() async{
      await DioHelper.getData(url: "tools").then((value){
         home_list=value.data["data"];
      });
      emit(get_tools_state());
   }
    get_plants() async{
      await DioHelper.getData(url:"plants").then((value){
         home_list=value.data["data"];
         emit(get_plants_state());
      }).catchError((onError){
         print(onError);
      });

   }
    get_proudcts() async{
      await DioHelper.getData(url:"proudcts").then((value){
         home_list=value.data["data"];
      });
      emit(get_proudcts_state());
   }
}