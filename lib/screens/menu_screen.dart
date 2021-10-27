import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_order/widgets/menu_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,

      drawer: Stack(
        children: [

          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 0.5,sigmaY: 0.5),
            child: Image(
              image: AssetImage('images/pATTERN.png'),


            ),
          ),
          Container(
            width: 240,
            child: Drawer(
              child: ListView(

                children: [
                  SizedBox(height: 110,),



                  SizedBox(height: 10,),

                  ListTile(

                    leading:InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/profile_screen');
                      },
                      child: Image(
                        image: AssetImage(
                            'image_drawer/Icon - Profile1.png',
                        ),
                      ),
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),

                  ),

                  SizedBox(height: 7,),
                  ListTile(
                    leading:InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Image(
                        image: AssetImage(
                            'image_drawer/Icon - about us.png'
                        ),
                      ),
                    ),
                    title: Text(
                      'About us',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),

                  ),
                  SizedBox(height: 7,),
                  ListTile(
                    onTap: () {
                      // Navigator.pushNamed(context, '/login_screen');
                    },
                    leading:InkWell(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Image(image: AssetImage('image_drawer/Icon - Articles.png'),)),
                    title: Text(
                      'Articles',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),
                  ),
                  SizedBox(height: 7,),

                  ListTile(
                    onTap: () {
                    },
                    leading:InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Image(
                        image: AssetImage(
                            'image_drawer/settings.png'
                        ),
                      ),
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),
                  ),
                  SizedBox(height: 7,),

                  ListTile(
                    onTap: () {
                    },
                    leading:InkWell(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Image(image: AssetImage('image_drawer/Icon - Need help.png'),)),
                    title: Text(
                      'Need Help?',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),
                  ),
                  SizedBox(height: 7,),


                  ListTile(
                    onTap: () {
                    },
                    leading:InkWell(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '/terms_of_services');
                        },
                        child: Image(image: AssetImage('image_drawer/Icon - Term of services.png'),)),
                    title: Text(
                      'Terms of Services',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),
                  ),
                  SizedBox(height: 7,),

                  ListTile(
                    onTap: () {

                    },
                    leading:InkWell(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '/sign_in');
                        },
                        child: Image(image: AssetImage('image_drawer/Logout.png'),)),
                    title: Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),


          Column(

           children: [
             SizedBox(height: 30,),
             Container(

               height: 100,
               width: 350,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20),

               ),
               child: Center(
                 child: Card(
                   elevation: 0,

                   child: ListTile(
                     leading: CircleAvatar(
                       radius: 30,
                       child: Image.asset(
                         'image_drawer/profile-image.png',
                       ),
                       backgroundColor: Colors.white,
                     ),
                     title: Text('Amer Dawood',
                       style: TextStyle(
                         fontSize: 25,
                         color: Color.fromRGBO(54, 89, 106, 1),

                       ),
                     ),

                     subtitle: Text('amermadawood@gmail.com',
                       style: TextStyle(
                         fontSize: 15,
                         color: Color.fromRGBO(54, 89, 106, 1),

                       ),
                     ),

                   ),

                 ),
               ),
             ),
           ],
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Hi, Madbrains',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(54, 89, 106, 1),
          ),
        ),
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Image(
                image: (
                AssetImage(
                  'image_drawer/img - user.png',
                )
                ),
              ),
            );
          },
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: InkWell(
              onTap: (){},
              child: Image(
                image: AssetImage(
                  'image_drawer/Icon - supermarket.png',
                ),
              ),
            ),

          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      hintText: 'Any food search here',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search,color: Colors.grey,),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){},
                    child: Image(
                      image: AssetImage('image_drawer/filter.png',
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 240,
                        width: 120,
                        margin: EdgeInsetsDirectional.only(end: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Rice',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(54, 89, 106, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 9.5),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/Img - fruits.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 240,
                        width: 120,
                        margin: EdgeInsetsDirectional.only(end: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Dry Fruits',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(54, 89, 106, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 9.5),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/Img - Juice.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 240,
                        width: 120,
                        margin: EdgeInsetsDirectional.only(end: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Atta',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(54, 89, 106, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 9.5),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/Dry Fruits.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 240,
                        width: 120,
                        margin: EdgeInsetsDirectional.only(end: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Dry Fruits',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(54, 89, 106, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 9.5),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/Img - Juice.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),


            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(
                      'images/Bg.png',
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
                         'Upto 40% Off',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(14, 164, 79, 1),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '  New Launches, Pulses, Atta',
                          style: TextStyle(
                            fontSize: 21,
                            color: Color.fromRGBO(54, 89, 106, 1),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Rice & other Gains.',
                          style: TextStyle(
                            fontSize: 21,
                            color: Color.fromRGBO(54, 89, 106, 1),
                          ),
                        ),
                        SizedBox(height: 5,),
                        ElevatedButton(
                          onPressed: () {},
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
            ),


            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Top Product',
                  style: TextStyle(
                    fontSize: 26,
                    color:Color.fromRGBO(54, 89, 106, 1),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: ()=>Navigator.pushNamed(context, '/top_product'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(169, 181, 199, 1),
                  ),
                  child: Text(
                    'view all',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1000,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 140 / 180,
                ),
                   children:[
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
            ),

          ],
        ),
      ),
    );
  }
}

