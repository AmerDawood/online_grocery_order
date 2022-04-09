import 'package:flutter/material.dart';
import 'package:grocery_order/prefs/customer_preferance_controller.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      String routeName =CustomerPreferenceController().loggedIn ?'/main_screen':'/main_screen';
      Navigator.pushReplacementNamed(context, routeName);
      // Navigator.pushReplacementNamed(context, '/page_view_screen');
    },);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [


          Container(
            child:Image(
              image: AssetImage(
                'images/Splash_screen.jpg',
              ),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            width: double.infinity,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/Grocery.png',
                      ),
                    ),
                    Image(
                      image: AssetImage(
                        'images/Store.png',
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
