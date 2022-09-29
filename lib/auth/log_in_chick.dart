import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/auth/login-file/login.dart';
import '../home_badge/home_ui.dart';
import '../web_ui/auth/login-file/login.dart';
import '../web_ui/home_badge_web/home web ui.dart';
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
                return LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      if(constraints.widthConstraints().biggest.width<1536){
                        return Login_ui();
                      }else{
                        return LoginUiWeb();
                      }
                    });
              }
              else{
                return LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      if(constraints.widthConstraints().biggest.width<1536){
                        return Home_Badge();
                      }else{
                        return Home_Badge_web();
                      }
                    });
              }
            }
        )
    );
  }
}
