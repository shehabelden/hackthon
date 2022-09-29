import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/home_badge/cubt/home_cubt.dart';
import 'package:untitled/home_badge/cubt/state.dart';

import 'card_lis.dart';
import '../main_app_bar.dart';
class ShopUi extends StatefulWidget {
  const ShopUi({Key? key}) : super(key: key);

  @override
  State<ShopUi> createState() => _ShopUiState();
}

class _ShopUiState extends State<ShopUi> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => home_badge_cubt(),
      child: BlocConsumer<home_badge_cubt,home_state>(
        listener: (c,i){},
        builder: (Context,i) {
          final cubt=home_badge_cubt.get(Context);
          cubt.get_tools();
          return Material(
            child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: double.infinity,
                  child:  Column(
                      children: [
                        MainAppBar(),
                        SizedBox(
                          height: 673,
                          width: 800,
                          child: GridView.builder(
                              itemCount: cubt.home_list.length,
                              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 18,
                            mainAxisSpacing: 20,
                            childAspectRatio: 1.1,
                          ),
                              itemBuilder:(c,i){
                                return Container(
                                    decoration:BoxDecoration(
                                      border: Border.all(
                                        width: .4,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: CardList(cubt.home_list[i])
                                );
                              } ),
                        ),
                      ],
                    ),
            ),
          );
        }
      ),
    );
  }
}
