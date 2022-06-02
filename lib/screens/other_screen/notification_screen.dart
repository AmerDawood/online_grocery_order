import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_order/widgets/arrow_back_widget.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 1),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ArrowBack(route: '/main_screen'),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 246, 249, 1),
        title: Text('Notification',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 27,
            color: Color.fromRGBO(54, 89, 106, 1),
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color:Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 216, 219, 224),
                    ),
                    child: Text(
                      'Clear all',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 10),
            child: SizedBox(
              height: 1000,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(

                    width: double.infinity,
                    height:120,
                    child: Card(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: ListTile(
                          leading:CircleAvatar(
                            radius: 45,
                            backgroundImage:AssetImage('images/Mask Group 3.png'),
                          ),
                          title: Text('Amer'),
                          subtitle: Text('120202121'),
                          trailing:Text('2hour ago'),

                        ),
                      ),
                    ),

                  );

                },
              ),
            ),
          ),



        ],
      ),
    );
  }
}
