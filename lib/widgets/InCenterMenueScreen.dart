import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class InCenterMenueScreen extends StatelessWidget {
  final String imageUrl;
  final String discount;
  final String title;
  InCenterMenueScreen({
    required this.imageUrl,
    required this.discount,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        width: double.infinity,
        child: 
              Stack(
                children: [
                  Image(
                    image: NetworkImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Upto ${discount} % Off',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(14, 164, 79, 1),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '${title}',
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '${title}',
                          style: TextStyle(
                            fontSize: 21,
                            color: Color.fromRGBO(54, 89, 106, 1),
                          ),
                        ),
                        SizedBox(height: 5,),
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.pushReplacementNamed(context, '/details_products_screen');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(251, 109, 58, 1),
                          ),
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(251, 251, 251, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
           
       

    );
  }

}




/*

 */