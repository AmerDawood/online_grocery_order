import 'package:flutter/material.dart';
import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/other_screen/categories_screen.dart';

class DetailScreen extends StatefulWidget {
  final Categories _categories;
  DetailScreen(this._categories);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 360,
                width: double.infinity,
                color: Colors.blue,
                child: Image.network(
                  widget._categories.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/main_screen');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            // height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.green,
              color: Colors.white10,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      CustomText(
                        text: 'Name : ${widget._categories.nameEn}',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      CustomText(
                        text:
                            ' Category Count : ${widget._categories.productsCount}  ',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      CustomText(
                        text:
                            'sub Cat count : ${widget._categories.subCategoriesCount} price',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.black.withOpacity(0.1),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            text:
                                'Lorem Ipsum is simply dummy text of the printi'
                                'n and typesetting industry. Lor'
                                ' em Ipsum has been the industry'
                                'Lorem Ipsum is simply dummy text of the printi'
                                'n and typesetting industry.Lor'),
                      ),
                    ),
                  ),
                ),
               SizedBox(height: 40,),
                ElevatedButton(
                           onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange.withOpacity(0.6),
                              minimumSize: Size(30, 50),
                              fixedSize: Size(300, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
