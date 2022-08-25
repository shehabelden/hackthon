import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/auth/user_model.dart';
class Login extends ChangeNotifier{
  Future<Usermodel> login(String email, String password) async {
    const api="https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin/";
    final data ={
      "password":password,
      "email":email,
    };
    final dio=Dio();
    Response res=await dio.post(api,data:data);
    if(res.statusCode == 200){
      final body=res.data;
      // print(body["data"]["accessToken"].toString());
      SharedPreferences pref=await SharedPreferences.getInstance();
      pref.setString("token_pref",body["data"]["accessToken"]);
      print("suc");
      return Usermodel(name: email, token: body["accessToken"]);
    }else{
      throw Exception('Failed to load');
    }

  }

}