import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grocery_order/prefs/app_settings_prefs.dart';
import 'package:grocery_order/prefs/customer_preferance_controller.dart';
import 'package:grocery_order/screens/auth/forget_password.dart';
import 'package:grocery_order/screens/auth/page_view_screen.dart';
import 'package:grocery_order/screens/auth/sign_in.dart';
import 'package:grocery_order/screens/auth/sign_up.dart';
import 'package:grocery_order/screens/other_screen/categories_screen.dart';
import 'package:grocery_order/screens/other_screen/favorite_screen.dart';
import 'package:grocery_order/screens/launch_screen.dart';
import 'package:grocery_order/screens/app/main_screen.dart';
import 'package:grocery_order/screens/app/menu_screen.dart';
import 'package:grocery_order/screens/other_screen/notification_screen.dart';
import 'package:grocery_order/screens/page_view_screen.dart';
import 'package:grocery_order/screens/profile/personal_information.dart';
import 'package:grocery_order/screens/profile/profile_screen.dart';
import 'package:grocery_order/screens/other_screen/terms_of_services.dart';
import 'package:grocery_order/screens/other_screen/product_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await CustomerPreferenceController().initSharedPreference();
  await AppSettingsPreferances().initPreferances();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainMaterialApp();

  }
}

class MainMaterialApp extends StatelessWidget {
  const MainMaterialApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => ScreenUtilInit(
        designSize: orientation == Orientation.portrait
            ? Size(375, 812)
            : Size(812, 375),
        builder: () => GetMaterialApp(
          // initialBinding: Binding(),
          // home: AppScreen(),
          debugShowCheckedModeBanner: false,
          // theme: ThemeService().lightTheme,
          // darkTheme: ThemeService().darkTheme,
          // themeMode: ThemeService().getThemeMode(),
           initialRoute: '/launch_screen',
      routes: {
        //auth
        '/launch_screen':(context)=>LaunchScreen(),
        '/page_view_screen':(context)=>PageViewScreen(),
        '/sign_in':(context)=>SignIn(),
        '/sign_up':(context)=>SignUp(),
        '/forget_password':(context)=>ForgetPassword(),
        //screen
        '/menu_screen':(context)=>MenuScreen(),
        '/main_screen':(context)=>MainScreen(),
        '/top_product':(context)=>TopProduct(),
        '/favorite_screen':(context)=>FavoriteScreen(),
        '/profile_screen':(context)=>ProfileScreen(),
        '/personal_information':(context)=>PersonalInformation(),
        '/notification_screen':(context)=>NotificationScreen(),
        '/terms_of_services':(context)=>TermsOfServices(),
        '/CategoriesScreen':(context)=>CategoriesScreen(),


      },

        ),
      ),
    );
  }
}
