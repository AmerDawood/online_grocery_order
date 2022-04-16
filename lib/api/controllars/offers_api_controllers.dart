import 'dart:convert';
import 'dart:io';
import 'package:grocery_order/models/offers_products.dart';
import '../../prefs/customer_preferance_controller.dart';
import '../api_settings.dart';
import 'package:http/http.dart' as http;

class OffersApiControllers{

   Future<List<OffersProducts>> getOffersProducts() async {
    var url = Uri.parse(ApiSettings.OffersProducts);
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
          .map((jsonObject) => OffersProducts.fromJson(jsonObject))
          .toList();
    } else if (response.statusCode == 400) {
      //
    }
    return [];
  }

}