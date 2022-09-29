import 'package:flutter/material.dart';
import '../../main_app_bar.dart';
import '../main_class/custom_buttom.dart';
import '../main_class/text_field.dart';
class LoginUiWeb extends StatefulWidget {
  const LoginUiWeb({Key? key}) : super(key: key);
  @override
  State<LoginUiWeb> createState() => _LoginUiWeb_uiState();
}
class _LoginUiWeb_uiState extends State<LoginUiWeb> {
  @override
  TextEditingController  email=TextEditingController();
  TextEditingController  password =TextEditingController();
  List word=["email","password"];
  List route_app_par_name=["login","signup"];
  Widget build(BuildContext context){
    List <TextEditingController> texteditingcontroller=[email,password];
    return Material(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
              children: [
                MainAppBar(),
                 const SizedBox(
                    height: 80,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text("Sign up",style: TextStyle(
                        fontSize: 20,
                      )),
                      SizedBox(width: 287,),
                      Text("Login",style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                const SizedBox(
                  width:1200 ,
                  child: Divider(
                    height: 40,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20  ,
                ),
                SizedBox(
                    height: 300,
                  width: 860,
                  child: ListView.builder(
                       itemCount: texteditingcontroller.length,
                      shrinkWrap: true,
                      itemBuilder:(c,i){
                    return Text_Field(word[i],texteditingcontroller[i]);
                  }),
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 700.0,bottom: 50),
                 child: InkWell(
                   onTap: (){},
                   child:const Text("Forget password ?",style:TextStyle(
                       color: Colors.green,
                       fontSize: 18,
                   )),
                 ),
               ),
               CusttomButtom("login",password,email),
                SizedBox(
                  height:48,
                  width:1200,
                  child:Image.asset("images/image1.png",),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (c,i){
                      return Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Container(
                          width: 320,
                          decoration:BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: .1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: const[

                              ],),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
        ),
        ),

    );
  }
}