import 'dart:ui';

import 'package:flutter/material.dart';
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
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 246, 249, 1),
        title: Text('Notification',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
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
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(169, 181, 199, 1),
                  ),
                  child: Text(
                    'Clear all',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 1000,
              child: ListView.builder(
                itemCount: 3,
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
                          title: Text('Amer Maher Dawood'),
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
