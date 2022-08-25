import 'package:flutter/material.dart';
import 'package:untitled/auth/main_class/custom_buttom.dart';

import '../../main_widgt/app_par.dart';
import '../main_class/text_field.dart';
class Login_ui extends StatefulWidget {
  const Login_ui({Key? key}) : super(key: key);

  @override
  State<Login_ui> createState() => _Login_uiState();
}

class _Login_uiState extends State<Login_ui> {
  @override
  TextEditingController  email=TextEditingController();
  TextEditingController  password =TextEditingController();
  List word=["email","password"];
  List route_app_par_name=["login","signup"];
  Widget build(BuildContext context) {
    List <TextEditingController> texteditingcontroller=[email,password];
    return Material(
      child: Container(
        height: 926,
        width: 428,
        child: Padding(
          padding: const EdgeInsets.only(top:90.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 51.0),
                child: Container(
                  height: 41,
                  width: 102,
                  child:Image.asset("images/logo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 31.0,right:40),
                child: Container(
                  width: 240,
                  height: 43.4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:route_app_par_name.length,
                    itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.only(left:60.0),
                        child: Center(child: app_par(route_app_par_name[i])),
                      );
                    },
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (c,i){
                return Padding(
                  padding: const EdgeInsets.only(bottom:25.5),
                  child: text_field(word[i],texteditingcontroller[i]),
                );
              }),
              custtom_buttom("login",password,email),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  height:48,
                  width:345,
                  child:Image.asset("images/image1.png"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 48.0),
                    child: Icon(Icons.g_mobiledata),
                  ),
                  Icon(Icons.facebook_sharp),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}