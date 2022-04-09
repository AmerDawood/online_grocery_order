import 'dart:ui';

import 'package:flutter/material.dart';

class favorite_widget extends StatelessWidget {
  final String Text1;
  final String Text2;
  final String Text3;
  final String Text4;
  final Image image;

  favorite_widget({
   required this.Text1,
   required this.Text2,
   required this.Text3,
   required this.Text4,
   required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 127,
                  width: double.infinity,
                  child:image,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 21,
                    child: Icon(
                      Icons.favorite_outlined,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Stack(
            children: [
              Container(
                height: 88,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                       Text1,
                      style: TextStyle(color: Colors.black, fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      Text2,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          Text3,
                          style: TextStyle(
                              color: Color.fromRGBO(14, 164, 79, 100),
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        Text4,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    Spacer(),
                     Padding(
                       padding: const EdgeInsets.only(right: 5),
                       child: Row(
                         children: [
                           InkWell(
                             onTap: (){},
                             child: Image(
                               image: AssetImage(
                                 'images/Button - plus.png',

                               ),
                               width: 40,
                               height: 40,
                             ),
                           ),
                         ],
                       ),
                     ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
