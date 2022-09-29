import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../auth/login_logic.dart';
import '../../../auth/user_model.dart';
Widget CusttomButtom(String text,TextEditingController password,TextEditingController email){
  final _login=Login();
  return InkWell(
    onTap: () async{
      Usermodel user=await _login.login(email.text, password.text);
      SharedPreferences _prame= SharedPreferences.getInstance() as SharedPreferences;
      final prame= _prame.getString(user.token);
      print(prame.toString());
    },
    child:Container(
      height: 76,
      width: 860,
      color: Colors.green.shade800,
      alignment:Alignment.center,
      child: Text(text,style:const TextStyle(
        fontSize:16,
      ) ),
    ) ,
  );
}