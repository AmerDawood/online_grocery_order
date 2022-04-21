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
       String routeName =CustomerPreferenceController().loggedIn ?'/main_screen':'/sign_in';
       Navigator.pushReplacementNamed(context, routeName);
      //  Navigator.pushReplacementNamed(context, '/page_view_screen');
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
                    SizedBox(height: 100,),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 20),
                    //   child:
                    // ),
                    Stack(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 85,top: 10),
                          child: Image.asset('images/orange.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 52,top: 84),
                          child: Image.asset('images/line.png'),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Image(
                            image: AssetImage(
                              'images/'
                                  'Grocery2.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110,),
                      child: Image(
                        image: AssetImage(
                          'images/Store1.png',
                        ),
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
