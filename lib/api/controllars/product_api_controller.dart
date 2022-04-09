import 'dart:convert';
import 'dart:io';
import 'package:grocery_order/api/api_settings.dart';
import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/models/product.dart';
import 'package:grocery_order/prefs/customer_preferance_controller.dart';
import 'package:http/http.dart'as http;

class ProductAPIController{

  Future<List<Product>>getProduct ()async{
    var url =Uri.parse(ApiSettings.Product);
    var response = await http.get(
      url,headers: {
      HttpHeaders.authorizationHeader: CustomerPreferenceController().token,
      HttpHeaders.acceptHeader: 'application/json',
    },);

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      //as List
      var jsonArray = jsonResponse['list'] as List;
      return jsonArray.map((jsonObject) => Product.fromJson(jsonObject)).toList();
    }else if(response.statusCode==400){
      //
    }
    return [];

  }

}