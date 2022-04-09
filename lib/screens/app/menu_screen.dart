import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_order/api/controllars/category_api_controller.dart';
import 'package:grocery_order/api/controllars/product_api_controller.dart';
import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/models/product.dart';
import 'package:grocery_order/widgets/InCenterMenueScreen.dart';
import 'package:grocery_order/widgets/Search&Filtter.dart';
import 'package:grocery_order/widgets/StackInMenuScreen.dart';
import 'package:grocery_order/widgets/menu_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {




  List<Categories> _category =<Categories>[];
  late Future<List<Categories>> _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future =CategoryAPIController().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
            child: Image(
              image: AssetImage('images/pATTERN.png'),
            ),
          ),
          Container(
            width: 240,
            child: Drawer(
              child: ListView(
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/profile_screen');
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
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Image(
                        image: AssetImage('image_drawer/Icon - about us.png'),
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
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    onTap: () {
                      // Navigator.pushNamed(context, '/login_screen');
                    },
                    leading: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Image(
                          image: AssetImage('image_drawer/Icon - Articles.png'),
                        )),
                    title: Text(
                      'Articles',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Image(
                        image: AssetImage('image_drawer/settings.png'),
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
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Image(
                          image:
                              AssetImage('image_drawer/Icon - Need help.png'),
                        )),
                    title: Text(
                      'Need Help?',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/terms_of_services');
                        },
                        child: Image(
                          image: AssetImage(
                              'image_drawer/Icon - Term of services.png'),
                        )),
                    title: Text(
                      'Terms of Services',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/sign_in');
                        },
                        child: Image(
                          image: AssetImage('image_drawer/Logout.png'),
                        )),
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
              SizedBox(
                height: 30,
              ),
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
                          'image_drawer/img - user.png',
                        ),
                        backgroundColor: Colors.white,
                      ),
                      title: Text(
                        'Amer Dawood',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(54, 89, 106, 1),
                        ),
                      ),
                      subtitle: Text(
                        'amermadawood@gmail.com',
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
            shadows: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Image(
                  image: (AssetImage(
                    'image_drawer/img - user.png',
                  )),
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
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image(
                  image: AssetImage(
                    'image_drawer/Icon - supermarket.png',
                  ),
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
            SearchAndFiltter(),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StackToGategory(
                    title: 'Rise',
                    image: Image(
                      image: AssetImage(
                        'images/Img - fruits.png',
                      ),
                    ),
                  ),
                  StackToGategory(
                    title: 'Dry Fruits',
                    image: Image(
                      image: AssetImage(
                        'images/Img - Juice.png',
                      ),
                    ),
                  ),
                  StackToGategory(
                    title: 'Atta',
                    image: Image(
                      image: AssetImage(
                        'images/Dry Fruits.png',
                      ),
                    ),
                  ),
                  StackToGategory(
                    title: 'Dry Fruits',
                    image: Image(
                      image: AssetImage(
                        'images/Img - Juice.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InCenterMenueScreen(),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Top Product',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromRGBO(54, 89, 106, 1),
                    // Shadow
                    shadows: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/top_product'),
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
              height: 5,
            ),
            SizedBox(
              height: 400,
              child:FutureBuilder<List<Categories>>(
                future: _future,
                builder:(context, snapshot) {
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Center(
                      child:CircularProgressIndicator(),
                    );

                  }else if(snapshot.hasData&&snapshot.data!.isNotEmpty){
                    _category = snapshot.data ??[];

                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          childAspectRatio: 3 / 3.6,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5
                      ),
                      itemCount: 5,
                      itemBuilder: (BuildContext ctx, index){
                        return InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/details_products_screen');
                          },
                          child: menu_widget(
                            Text1: _category[index].nameEn,
                            Text2: _category[index].nameAr,
                            Text3: _category[index].productsCount.toString(),
                            Text4: _category[index].id.toString(),
                            url: _category[index].imageUrl,
                          ),
                        );
                      },
                    );

                  }else {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.warning,size: 80,),
                          SizedBox(height: 20,),
                          Text('No Product',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,

                            ),
                          ),
                        ],
                      ),
                    );
                  }

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
