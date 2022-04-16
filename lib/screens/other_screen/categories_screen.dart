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

            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: _categories.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(DetailScreen(_categories[index]));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, bottom: 15),
                                child: Text(
                                  _categories[index].nameEn,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image(
                            image: NetworkImage(
                              _categories[index].imageUrl,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
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
