import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login_logic.dart';
import '../user_model.dart';
Widget custtom_buttom(String text,TextEditingController password,TextEditingController email){
  final _login=Login();
  return InkWell(
    onTap: () async{
      Usermodel user=await _login.login(email.text, password.text);
      SharedPreferences _prame= SharedPreferences.getInstance() as SharedPreferences;
      final prame= _prame.getString(user.token);
      print(prame.toString());
    },
    child:Container(
      height: 48,
      width: 337,
      color: Colors.green.shade800,
      alignment:Alignment.center,
      child: Text("${text}",style:TextStyle(
        fontSize:16,
      ) ),
    ) ,
  );
}