import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/web_ui/blog/cubt/cubt.dart';
import '../main_app_bar.dart';
import 'cubt/state.dart';
class OneBlog extends StatelessWidget {
  String blogida;
    OneBlog({Key? key, required this.blogida}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MainAppBar(),
          const Text("blog",style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
          BlocProvider(
            create: (context)=>BlogCubt(),
            child: BlocConsumer<BlogCubt,BlogMainState>(
              listener: (c,i){},
                builder: (c,i) {
                  return Container(

                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
