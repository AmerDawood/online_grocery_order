import 'package:flutter/material.dart';
import 'package:grocery_order/widgets/button.dart';
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


                 
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,),
                          child: ButtonWidget(fun: (){
                               Navigator.pushReplacementNamed(context, '/sign_in');
                          }, text: 'Start Now'),
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

