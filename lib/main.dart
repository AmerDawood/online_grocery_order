import 'package:flutter/material.dart';
import 'package:grocery_order/auth/forget_password.dart';
import 'package:grocery_order/auth/reset_password.dart';
import 'package:grocery_order/auth/sign_in.dart';
import 'package:grocery_order/auth/sign_up.dart';
import 'package:grocery_order/screens/chat_massege.dart';
import 'package:grocery_order/screens/favorite_screen.dart';
import 'package:grocery_order/screens/launch_screen.dart';
import 'package:grocery_order/screens/main_screen.dart';
import 'package:grocery_order/screens/menu_screen.dart';
import 'package:grocery_order/screens/notification_screen.dart';
import 'package:grocery_order/screens/page_view_screen.dart';
import 'package:grocery_order/screens/personal_information.dart';
import 'package:grocery_order/screens/profile_screen.dart';
import 'package:grocery_order/screens/terms_of_services.dart';
import 'package:grocery_order/screens/top_product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        //auth
        '/launch_screen':(context)=>LaunchScreen(),
        '/page_view_screen':(context)=>PageViewScreen(),
        '/sign_in':(context)=>SignIn(),
        '/sign_up':(context)=>SignUp(),
        '/forget_password':(context)=>ForgetPassword(),
        '/reset_password':(context)=>ResetPassword(),
        //screen
        '/menu_screen':(context)=>MenuScreen(),
        '/main_screen':(context)=>MainScreen(),
        '/top_product':(context)=>TopProduct(),
        '/favorite_screen':(context)=>FavoriteScreen(),
        '/profile_screen':(context)=>ProfileScreen(),
        '/personal_information':(context)=>PersonalInformation(),
        '/notification_screen':(context)=>NotificationScreen(),
        '/terms_of_services':(context)=>TermsOfServices(),
        '/chat_screen':(context)=>Chat(),
      },


    );

  }
}
