import 'package:flutter/material.dart';
class EmptyCard extends StatefulWidget {
  const EmptyCard({Key? key}) : super(key: key);

  @override
  State<EmptyCard> createState() => _Empty_CardState();
}

class _Empty_CardState extends State<EmptyCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height:926,
        width:428,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child:Padding(
                padding: EdgeInsets.only(top: 70.0,left: 24),
                child: Text('MyCart',
                style:TextStyle(
                  fontSize: 24,
                  fontFamily: "Roboto"
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:124.0),
              child: SizedBox(
                  height: 250,
                  width:250 ,
                  child: Image.asset("images/empty_image.png",)
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Your cart is empty",
                     style:TextStyle(
                       fontSize: 24,
                       fontFamily: "Bold"
                     ) ,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Roboto",
                      fontSize: 18,
                    ),
                      maxLines: 3,
                      textAlign:TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
