import 'package:flutter/material.dart';
import 'package:untitled/Dio/dio_get.dart';
import 'auth/log_in_chick.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await dio_helper.init();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login_check(),
  ));
}
