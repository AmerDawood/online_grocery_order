import 'package:flutter/material.dart';
import 'package:grocery_order/widgets/page_view_widgets.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [


  page_view_widgets(
    selected: true,
            text1: 'Welcome',
            text2: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
            image:Image(
                image:AssetImage(
                    'images/Image 55.jpg',
                ),
              fit: BoxFit.cover,
            ),
          ),
          page_view_widgets(
            selected: true,

            text1: 'Welcome',
            text2: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
            image:Image(
              image:AssetImage(
                'images/Image 77.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          page_view_widgets(
            selected: true,

            text1: 'Welcome',
            text2: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
            image:Image(
              image:AssetImage(
                'images/Image 66.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),


       Stack(
            children: [
              Container(
                child: Image(
                  image: AssetImage('images/Image 66.jpg'),
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    height: 410,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(70),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 100,
                          child: Image(image:AssetImage('images/Logo.png')),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Welcome',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 50,
                        ),


                        Container(
                          width: 388,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 10),
                            child:ElevatedButton(
                              onPressed: () =>
                                  Navigator.pushReplacementNamed(context, '/sign_in'),
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(255, 130, 54, 1),
                                fixedSize: Size(400, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Start Now',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}

