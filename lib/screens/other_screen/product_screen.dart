import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grocery_order/api/controllars/category_api_controller.dart';
import 'package:grocery_order/api/controllars/product_api_controller.dart';
import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/models/product.dart';
import 'package:grocery_order/screens/other_screen/details_screen.dart';
import 'package:grocery_order/widgets/menu_widget.dart';
class TopProduct extends StatefulWidget {
  const TopProduct({Key? key}) : super(key: key);

  @override
  _TopProductState createState() => _TopProductState();
}

class _TopProductState extends State<TopProduct> {

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 246, 249, 100),
        title: Text(
          'Top Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Color.fromRGBO(54, 89, 106, 1),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
          Navigator.pushReplacementNamed(context, '/main_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(25, 47, 57, 100),
          ),
        ),
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
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: FutureBuilder<List<Categories>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child:  SpinKitRotatingCircle(
                color: Colors.orange,
                size: 50.0,
              ),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _category = snapshot.data ?? [];
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 3 / 3.6,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5
              ),
              itemCount: _category.length,
              itemBuilder: (BuildContext ctx, index){
                return menu_widget(
                  Text1: _category[index].nameEn,
                  Text2: _category[index].nameAr,
                  Text3: _category[index].productsCount.toString(),
                  Text4: _category[index].id.toString(),
                  url: _category[index].imageUrl,
                );
              },
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
