import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/auth/login-file/login.dart';
import 'package:untitled/discation/discussion.dart';
import '../home_badge/home_ui.dart';
import '../profile/profile_ui.dart';
import 'cubt/cubt.dart';
import 'cubt/state.dart';
class login_check extends StatefulWidget {
  const login_check({Key? key}) : super(key: key);

  @override
  State<login_check> createState() => _login_checkState();
}
class _login_checkState extends State<login_check> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(contex)=>auth_badge_cubt(),
        child: BlocConsumer<auth_badge_cubt,main_auth_state>(
            listener: (c,i){},
            builder: (c,i) {
              auth_badge_cubt.get(c).token();
              final cubt=auth_badge_cubt.get(c);
              if(cubt.token_key==null){
                return Login_ui();
              }
              else{
                return Home_Badge();
              }
            }
        )
    );
  }
}
