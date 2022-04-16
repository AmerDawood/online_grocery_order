import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:grocery_order/api/api_settings.dart';
import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/prefs/customer_preferance_controller.dart';
import 'package:http/http.dart' as http;

class CategoryAPIController extends GetxController {
  List<Categories> _categories = [];
  List<Categories> get Category => _categories;
  @override
  void onInit(){
    super.onInit();
    getCategories();
  }


  Future<List<Categories>> getCategories() async {
    var url = Uri.parse(ApiSettings.Category);
    var response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader: CustomerPreferenceController().token,
        HttpHeaders.acceptHeader: 'application/json',
        },
    );

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      //as List
      var jsonArray = jsonResponse['list'] as List;
      return jsonArray
          .map((jsonObject) => Categories.fromJson(jsonObject))
          .toList();
    } else if (response.statusCode == 400) {
      //
    }
    return [];
  }
}