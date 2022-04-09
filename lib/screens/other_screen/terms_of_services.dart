import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TermsOfServices extends StatefulWidget {
  const TermsOfServices({Key? key}) : super(key: key);

  @override
  _TermsOfServicesState createState() => _TermsOfServicesState();
}

class _TermsOfServicesState extends State<TermsOfServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Terms Of Services',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color.fromRGBO(54, 89, 106, 1),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/main_screen');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(54, 89, 106, 1),
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Last update on Sep 2020',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),

                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Lorem Ipsum has bedeng the very industry '
                      'standard dummy text everg since the to mun '
                      ' 1500s, when aning tih unknown printer took a '
                      'galley of type and very goo scrambled it to  '
                      'make a type specimen book',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(142, 142, 142, 1),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 7, top: 10),
                      child: Text(
                        'Product Feature',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(54, 89, 106, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(235, 248, 138, 100),
                            child: Icon(
                              Icons.check,
                              color: Colors.green,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Lorem Ipsum has to good bedeng.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(142, 142, 142, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(235, 248, 138, 100),
                            child: Icon(
                              Icons.check,
                              color: Colors.green,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'When aning to unknown printer took.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(142, 142, 142, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(235, 248, 138, 100),
                            child: Icon(
                              Icons.check,
                              color: Colors.green,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Make a type specimen book.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(142, 142, 142, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(235, 248, 138, 100),
                            child: Icon(
                              Icons.check,
                              color: Colors.green,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Dummy text everything since the tog.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(142, 142, 142, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, top: 10),
                      child: Text(
                        'Terms',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(54, 89, 106, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem Ipsum has bedeng the very industry'
                        'standard dummy text everg since the to mun'
                        '1500s, when aning tih unknown printer took'
                        'a galley of type and very goo scrambled it to'
                        'make a type specimen book.Lorem Ipsum ha'
                        'bedeng the very industry s to be very good a'
                        ' standard dummy text everg since the to mun'
                        '1500s, when aning tih unknown printer took'
                        'a galley of type and very goo scrambled it to'
                        'make a type specimen book'
                        ,
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(142, 142, 142, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                      ),
                      child: Container(
                        color: Colors.white60,
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: Text('chancel',style: TextStyle(fontSize: 23),),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                  ),
                            )),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Accept',style: TextStyle(fontSize: 23),),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                  ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
