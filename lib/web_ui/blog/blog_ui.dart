import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/web_ui/blog/blog_card.dart';
import 'package:untitled/web_ui/blog/cubt/cubt.dart';
import 'package:untitled/web_ui/blog/cubt/state.dart';
import 'package:untitled/web_ui/main_app_bar.dart';
class MainBlog extends StatelessWidget {
  const MainBlog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainAppBar(),
            const Text("blog",style:TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20,
            )),
            SizedBox(
              height: 650,
              width: 1200,
              child: BlocProvider(
                create: (context)=>BlogCubt(),
                child: BlocConsumer<BlogCubt,BlogMainState>(
                  listener: (c,i){},
                  builder: (c,i) {
                    final cubt=BlogCubt.get(c);
                    cubt.blogGetAll();
                    return GridView.builder(
                      itemCount:cubt.bloggetall.length,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 20,
                        childAspectRatio: 1.4/1
                    ), itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: (){
                                context.beamToNamed('${cubt.bloggetall[i]["plantId"]}',data:cubt.bloggetall[i]["plantId"]);
                              },
                              child: blogCard(cubt.bloggetall[i]["imageUrl"]),
                          ),
                        );
                    },
                    );
                  }
                ),
              ),
            )
          ],
        ) ,
    );
  }
}