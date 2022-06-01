import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grocery_order/api/controllars/category_api_controller.dart';
import 'package:grocery_order/api/controllars/customer_api_controller.dart';
import 'package:grocery_order/api/controllars/offers_api_controllers.dart';
import 'package:grocery_order/api/controllars/product_api_controller.dart';
import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/models/customer.dart';
import 'package:grocery_order/models/offers_products.dart';
import 'package:grocery_order/models/product.dart';
import 'package:grocery_order/prefs/customer_preferance_controller.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/widgets/InCenterMenueScreen.dart';
import 'package:grocery_order/widgets/Search&Filtter.dart';
import 'package:grocery_order/widgets/StackInMenuScreen.dart';
import 'package:grocery_order/widgets/menu_widget.dart';

import '../../widgets/drawer.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  List<Customer> _categories = <Customer>[];
  late Future<List<Customer>> _future1;


  List<Categories> _category =<Categories>[];
  late Future<List<Categories>> _future;

  List<OffersProducts> _offersProducts = <OffersProducts>[];
  late Future<List<OffersProducts>> _future2;

 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future =CategoryAPIController().getCategories();
    _future1=CustomerApiController().getCustomer();
    _future2 =OffersApiControllers().getOffersProducts();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 1),
      drawer: MyDrawer(),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                  Container(
                  width: 45,height: 45,
                  child:
           Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image(
                image: (AssetImage(
                  'image_drawer/img - user.png',
                )
                ),
              ),
            );
          },
        ),
         ),
                SizedBox(width: 15,),

                CustomText(text: 'Hi, ${CustomerPreferenceController().name}', 
                fontSize: 26, 
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(54, 89, 106, 1),
                 ),
                Spacer(),
                Container(width: 45,height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image(
                  image: AssetImage(
                    'image_drawer/Icon - supermarket.png',
                  ),
                ),
                ),
                SizedBox(width: 10,),

              
              ],
            ),
            SizedBox(height: 10,),
            SearchAndFiltter(),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 5, right: 10),
              child:
              
               FutureBuilder<List<Categories>>(
                future: _future,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                  {
                    return const Center(
    
                    );
                  } else if (snapshot.hasData&&snapshot.data!.isNotEmpty) {
                      _category = snapshot.data ??[];
                    return SizedBox(
                      height: 160,
                      child: ListView.builder(
                        itemCount: _category.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: StackToCategory(
                                  imageUrl: '${_category[index].imageUrl}',
                                  title: '${_category[index].nameEn}',
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  } else {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        ],
                      ),
                    );
                  }

                },
              )
           
            ),


            SizedBox(
              height: 15,
            ),

        
               FutureBuilder<List<OffersProducts>>(
                future: _future2,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                  {
                    return const Center(
                      child: SpinKitRotatingCircle(
                color: Colors.orange,
                size: 50.0,
              ),
                    );
                  } else if (snapshot.hasData&&snapshot.data!.isNotEmpty){
                      _offersProducts = snapshot.data ??[];
                      return  

              CarouselSlider.builder(
                          
                  itemCount: _offersProducts.length,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) 
                  {
                   return   InCenterMenueScreen(
                     imageUrl: '${_offersProducts[itemIndex].imageUrl}',
                     // _offersProducts[itemIndex].discountRatio.toString()
                      discount: _offersProducts[itemIndex].discountRatio.toString(), 
                      //  _offersProducts[itemIndex].infoEn.toString()
                      title:_offersProducts[itemIndex].infoEn.toString(),
                      
                      );

                      
                  },
                     
                    options: CarouselOptions(
              height: 180,
              aspectRatio: 16/10,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(seconds: 5),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              
              scrollDirection: Axis.horizontal,
              
            ),
            
                );

                  } else {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.warning,
                            size: 80,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'No Category',
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
           



            SizedBox(
              // height: 5,
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
                  // onPressed: () => Navigator.pushNamed(context, '/top_product'),
                  onPressed: (){
                    ProductAPIController().getProduct();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 217, 222, 229),
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
                      child: SpinKitRotatingCircle(
                color: Colors.orange,
                size: 50.0,
              ),
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
                            // Navigator.pushReplacementNamed(context, '/details_products_screen');
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

