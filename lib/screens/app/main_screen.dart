import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_order/models/bn_screen.dart';
import 'package:grocery_order/screens/other_screen/categories_screen.dart';
import 'package:grocery_order/screens/other_screen/favorite_screen.dart';
import 'package:grocery_order/screens/app/menu_screen.dart';
import 'package:grocery_order/screens/other_screen/notification_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  late int _currentIndex = 0;
  final List<BnScreen> _bnScreen = <BnScreen>[
   BnScreen(widget: MenuScreen(), title: 'Menu'),
   BnScreen(widget: CategoriesScreen(), title: 'Categories'),
   BnScreen(widget: FavoriteScreen(), title: 'Favorite'),
   BnScreen(widget: NotificationScreen(), title: 'Notification'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade200,
        selectedFontSize: 17,
        selectedIconTheme: IconThemeData(color: Colors.black),

        items: [
BottomNavigationBarItem(
              icon: Image.asset('image_bottom_navbar/Shape 208.png',color: Colors.grey,),
              label: 'Home',
              activeIcon: Image.asset('image_bottom_navbar/Shape 208.png',color: Colors.orange,),
          ),
           BottomNavigationBarItem(
              icon: Image.asset('image_bottom_navbar/food.png'),
               label: 'Category',
                activeIcon: Image.asset('image_bottom_navbar/food.png',color: Colors.orange,height: 30,width: 40,),

           ),
          
          BottomNavigationBarItem(
              icon: Image.asset('image_bottom_navbar/Shape 122.png'),
              label: 'Favorite',
              activeIcon: Image.asset('image_bottom_navbar/Shape 122.png',color: Colors.orange,),
          ),
          BottomNavigationBarItem(
              icon: Image.asset('image_bottom_navbar/Shape 108.png'),
              label: 'Notification',
              activeIcon: Image.asset('image_bottom_navbar/Shape 108.png',color: Colors.orange),
          ),

        ],

      ),
      body:_bnScreen[_currentIndex].widget,



    );
  }
}
