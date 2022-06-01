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
        height: 200,
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
                    height: 150,
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            
                            '${title}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 21,
                              color: Color.fromARGB(255, 37, 10, 10),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(height: 5,),
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