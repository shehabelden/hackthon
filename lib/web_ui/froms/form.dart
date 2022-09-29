import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/web_ui/froms/cubt/cubt.dart';
import 'package:untitled/web_ui/froms/cubt/state.dart';
import 'package:untitled/web_ui/froms/post.dart';
class FromUi extends StatelessWidget {
  const FromUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
         const Text("Fourms",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          BlocProvider(
            create: (context)=>MainPostCubt(),
            child: BlocConsumer<MainPostCubt,MainPostGet>(
              listener:(c,i){},
              builder: (c,i) {
                final cubt=MainPostCubt.get(c);
                cubt.mainPostget();
                if(cubt.mainpostcubt.isNotEmpty){
                return SizedBox(
                  height: 700,
                  width: 1200,
                  child: ListView.builder(
                      itemCount: cubt.mainpostcubt.length,
                      itemBuilder:(c,i){
                        return Padding(
                          padding: const EdgeInsets.only(bottom:40.0),
                          child: postWeb(cubt.mainpostcubt[i]),
                        );
                  }),
                );}else{
                  return const Text("load");
                }
              }
            ),
          ),
        ],
      ),
    );
  }
}
