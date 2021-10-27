import 'package:flutter/material.dart';

class menu_widget extends StatelessWidget {
  final String Text1;
  final String Text2;
  final String Text3;
  final String Text4;
  final Image image;

  menu_widget({
    required this.Text1,
    required this.Text2,
    required this.Text3,
    required this.Text4,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
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
                  child:image,
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
                      color: Colors.red,
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
                  Text(
                    Text1,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    Text2,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Text(
                        Text3,
                        style: TextStyle(
                            color: Color.fromRGBO(14, 164, 79, 100),
                            fontSize: 20),
                      ),
                      Text(
                        Text4,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(
                      //   width: 50,
                      // ),

                      // SizedBox(width: 10),
                      Container(
                        height: 34,
                        width: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
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
