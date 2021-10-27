import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_order/models/bn_screen.dart';
import 'package:grocery_order/screens/categories_screen.dart';
import 'package:grocery_order/screens/favorite_screen.dart';
import 'package:grocery_order/screens/menu_screen.dart';
import 'package:grocery_order/screens/notification_screen.dart';


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
        items: [
           BottomNavigationBarItem(icon:Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
        ],

      ),
      body:_bnScreen[_currentIndex].widget,



    );
  }
}
