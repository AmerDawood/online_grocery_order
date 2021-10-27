import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Categories',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),),
          IconButton(onPressed: (){}, icon:Icon(Icons.stroller_sharp),),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3,
             mainAxisSpacing: 5,

          ),
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/Img - fruits.png',),),
            ),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/categoires_images/Img - Juice.png',),),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/Dry Fruits.png',),),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/cate_1.png',),),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/cate_2.png',),),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/cate_3.png',),),
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              color: Colors.white,
              child: Image(
                image: AssetImage('images/categoires_images/Img - fruits.png',),),
            ),







          ],
      ) ,
    );
  }
}
