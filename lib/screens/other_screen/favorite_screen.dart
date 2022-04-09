import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_order/widgets/favroite_widget.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 100),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 246, 249, 100),
        title: Text(
          'Top Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color.fromRGBO(54, 89, 106, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 23,

              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(54, 89, 106, 100),
                ),
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            childAspectRatio: 140 / 180,
          ),
          children: [
            favorite_widget(
              Text1: 'Nutrition Food',
              Text2: '500mg',
              Text3: '\$15.00',
              Text4: '15% off',
              image:Image(image: AssetImage('images/img.png'),),
            ),
            favorite_widget(
              Text1: 'Nutrition Food',
              Text2: '500mg',
              Text3: '\$15.00',
              Text4: '15% off',
              image:Image(image: AssetImage('favorite_image/img1.png'),),
            ),
            favorite_widget(
              Text1: 'Nutrition Food',
              Text2: '500mg',
              Text3: '\$15.00',
              Text4: '15% off',
              image:Image(image: AssetImage('favorite_image/img2.png'),),
            ),

          ],
        ),
      ),
    );
  }
}
