import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/discation/cubt/cubt.dart';
import 'package:untitled/discation/cubt/state.dart';

import '../auth/main_class/text_field.dart';
TextEditingController  title=TextEditingController();
TextEditingController  pio =TextEditingController();
List word=["title","pio",];
List <TextEditingController> texteditingcontroller=[title,pio];
class Discationpost extends StatelessWidget {
  const Discationpost({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context)=>discussion_cubt() ,
        child: BlocConsumer<discussion_cubt,main_state_discation>(
          listener: (c,i){},
          builder: (context1,i) {
            var cubt=discussion_cubt.get(context1);
            return Scaffold(
                appBar: AppBar(
                leading:Icon(Icons.arrow_back_ios,color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            title:const Text("Discussion Forums",style: TextStyle(
            color: Colors.black)
            )),

            body: Container(
              height: 460,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: InkWell(
                          onTap:()async{
                            cubt.take_photo=  await ImagePicker().pickImage(source:ImageSource.camera);
                          } ,
                        child:Container(
                          width: 250,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.green.shade800,
                            ),
                          ),
                         child:Text("+",style: TextStyle(
                           fontSize: 40,
                           color: Colors.green.shade800,
                         ),
                           textAlign: TextAlign.center,
                         ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (c,i){
                            return Padding(
                              padding: const EdgeInsets.only(bottom:25.5),
                              child: text_field(word[i],texteditingcontroller[i]),
                            );
                          }),
                    ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () async{
                      await cubt.send_data(title.text,pio.text);
                    },
                    child:Container(
                      height: 10,
                      width: 300,
                      color: Colors.green.shade800,
                      alignment:Alignment.center,
                      child:const Text("post",style:TextStyle(
                        fontSize:16,
                      )
                      ),
                  ),
                  ),
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
