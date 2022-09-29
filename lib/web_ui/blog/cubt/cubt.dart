import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'package:untitled/web_ui/blog/cubt/state.dart';
class BlogCubt extends Cubit<BlogMainState>{
   BlogCubt() : super(BlogInitState());
   static BlogCubt get(context)=>BlocProvider.of(context);
   List <dynamic> bloggetall=[];
  void blogGetAll(){
      DioHelper.getData(url: "products/blogs").then((value){
         bloggetall=value.data["data"]["plants"];
      });
      // print(bloggetall[2].toString());
      emit(BlogGetAll());
   }
}