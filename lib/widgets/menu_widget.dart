import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_order/screens/other_screen/details_screen.dart';
class menu_widget extends StatelessWidget{
  final String Text1;
  final String Text2;
  final String Text3;
  final String Text4;
  final String url;
  menu_widget({
    required this.Text1,
    required this.Text2,
    required this.Text3,
    required this.Text4,
    required this.url
  });

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                  width: double.infinity,
                  child:Image(
                    image: NetworkImage(
                      url,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 21,
                    child: Icon(
                      Icons.favorite_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Stack(
            children: [
              Container(
                height: 86,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      Text1,
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      Text2,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '$Text3\$',
                          style: TextStyle(
                              color: Color.fromRGBO(14, 164, 79, 100),
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          Text4,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(7),
                              ),

                            ),

                            GestureDetector(
                              onTap: (){},
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1.5),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 32,
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
        ],
      ),
    );
  }
}