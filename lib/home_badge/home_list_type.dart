import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/home_badge/cubt/state.dart';
import 'cubt/home_cubt.dart';
Widget home_list_type(String type_list,){
        return Container(
            width: 63,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius:BorderRadius.circular(12),
              border: Border.all(
                width: 0,
                color: Colors.grey.shade200,
              )
            ),
            alignment:Alignment.center,
            child:Text("${type_list}") ,
        );
}