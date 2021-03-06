import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_order/api/controllars/category_api_controller.dart';
import 'package:grocery_order/models/category.dart';

import 'details_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Categories> _categories = <Categories>[];
  late Future<List<Categories>> _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = CategoryAPIController().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 100),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 246, 249, 100),
        title: Text(
          'Categories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color.fromRGBO(54, 89, 106, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(54, 89, 106, 100),
                ),
              ),
            ),
          ),
          // IconButton(onPressed: (){}, icon:Icon(Icons.stroller_sharp),),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: FutureBuilder<List<Categories>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: SpinKitRotatingCircle(
                color: Colors.orange,
                size: 50.0,
              ),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _categories = snapshot.data ?? [];

            return Padding(
              padding: const EdgeInsets.only(left: 15,top: 17,right: 15,bottom: 15),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: _categories.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                     color: Colors.white,
                       borderRadius: BorderRadius.circular(15)
                     ),
                    child:  Stack(
                       children: [
                         Stack(
                           children: [
                             Center(
                               child: Image(
                               image: NetworkImage(
                                 _categories[index].imageUrl,
                               ),
                           ),
                             ),
                            Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                             children: [
                               Text(
                                 _categories[index].nameEn,
                                 style: TextStyle(
                                   fontSize: 22,
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   letterSpacing: 3,
                                 ),
                               ),
                             ],
                         ),
                          ),
                           ],
                         ),
                         
                       ],
                     ),
                    
                      );
                  }),
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
    );
  }
}
