import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Not available now',
              style: TextStyle(
                fontSize: 30,
                color:Color.fromRGBO(54, 89, 106, 1),
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(height: 10,),
            Icon(
              Icons.sentiment_dissatisfied_outlined,
              size: 35,
              color: Colors.red,
            ),
            SizedBox(height: 200,),


            Text('Go to menu',
              style: TextStyle(
                fontSize: 20,
                color:Color.fromRGBO(54, 89, 106, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/menu_screen');
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 35,
                color: Colors.red,
              ),
            ),




          ],
        ),
      ),
    );
  }
}
