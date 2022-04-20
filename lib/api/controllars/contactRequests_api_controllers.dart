
import 'dart:_http';
import 'dart:convert';

import 'package:grocery_order/api/api_settings.dart';
import 'package:grocery_order/models/contact_requests%20.dart';
import 'package:http/http.dart' as http;

import '../../models/contact_requests .dart';
import '../../prefs/customer_preferance_controller.dart';
class ContactRequestsApiController{

 Future<List<ContactRequests>> ContactRequest() async {
    var url = Uri.parse(ApiSettings.ContactRequest);
    var response = await http.post(
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
          .map((jsonObject) => ContactRequests.fromJson(jsonObject))
          .toList();
    } else if (response.statusCode == 400) {
      //
    }
    return [];
  }















}