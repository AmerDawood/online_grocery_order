import 'package:flutter/material.dart';
import 'package:grocery_order/widgets/menu_widget.dart';
class TopProduct extends StatefulWidget {
  const TopProduct({Key? key}) : super(key: key);

  @override
  _TopProductState createState() => _TopProductState();
}

class _TopProductState extends State<TopProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Top Product',style: TextStyle(color: Colors.black,fontSize: 25),),
      leading: IconButton(
        onPressed: (){},
        icon:Icon( Icons.arrow_back_ios,color: Colors.black,),

      ),

        actions: [
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/menu_screen');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            child: Icon(Icons.search,color: Colors.black,),

          ),
        ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 140/150,
        ),
        children: [
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('images/img.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img1.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img2.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img3.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img4.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img6.png'),),
          ),

          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('images/img.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img1.png'),),
          ),
          menu_widget(
            Text1: 'Nutrition Food',
            Text2: '500mg',
            Text3: '15.00',
            Text4: '15% off',
            image:Image(image: AssetImage('favorite_image/img2.png'),),
          ),

        ],

         ),
    );
  }
}
