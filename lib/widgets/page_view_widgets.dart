
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class page_view_widgets extends StatelessWidget {
  final String text1;
  final String text2;
  final Image image;
  final bool selected;
  page_view_widgets({
    required this.image,
    required this.text1,
    required this.text2,
    required this.selected,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child:image,
            height: double.infinity,

        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 260,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    text1,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    text2,
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
         //          Row(
         // mainAxisAlignment: MainAxisAlignment.center,
         //            children: [
         //              Container(
         //                width: 10,
         //                height: 10,
         //
         //                decoration: BoxDecoration(
         //                  color:selected? Colors.orange:Colors.pink,
         //
         //                  borderRadius: BorderRadius.circular(10),
         //                ),
         //              ),
         //              SizedBox(
         //                width: 10,
         //              ),
         //              Container(
         //                width: 10,
         //                height: 10,
         //                decoration: BoxDecoration(
         //                 color:selected? Colors.orange:Colors.pink,
         //                  borderRadius: BorderRadius.circular(10),
         //                ),
         //              ),
         //              SizedBox(
         //                width: 10,
         //              ),
         //              Container(
         //                width: 10,
         //                height: 10,
         //                decoration: BoxDecoration(
         //                  color:selected? Colors.orange:Colors.pink,
         //
         //                  borderRadius: BorderRadius.circular(10),
         //                ),
         //              ),
         //            ],
         //          ),

                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.orange,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: 50,),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.orange,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),






                ],
              ),
            ),
          ],
        ),
      ],

    );
  }
}
