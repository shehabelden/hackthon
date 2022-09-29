import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/dio/dio_get.dart';
import 'package:untitled/discation/cubt/state.dart';
import 'package:image_picker/image_picker.dart';
class discussion_cubt extends Cubit<main_state_discation>{
  discussion_cubt() : super(init_state_discations());
   List discussion_list=[];
   bool button_check=true;
  XFile ? take_photo;
  static discussion_cubt get(context)=>BlocProvider.of(context);
  void get_descation() async{
    DioHelper.init();
    await DioHelper.getData(url:"/forums").then((value){
      discussion_list=value.data["data"];
    });
    emit(Getdata());
  }
   send_data(title,pio,) async{
    DioHelper.init();
    Uint8List? photo=await take_photo?.readAsBytes();
    File ? photo_path=File(take_photo!.path);
    Image ? photo_Api=Image.file(photo_path) ;
     final  data=FormData.fromMap({
       "title":await title,
       'description':await pio,
       "imageBase64": await MultipartFile.fromFile(photo_path.path),
    });
    take_photo;
    await Dio().post("https://lavie.orangedigitalcenteregypt.com/api/v1/forums",data: data);
    emit(DioBost());
  }

}