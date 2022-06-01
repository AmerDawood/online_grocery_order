import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:grocery_order/api/api_settings.dart';
import 'package:grocery_order/models/contact_requests%20.dart';
import 'package:grocery_order/utils/helpers.dart';
import 'package:http/http.dart' as http;
import '../../models/contact_requests .dart';
import '../../prefs/customer_preferance_controller.dart';
class ContactRequestsApiController with Helpers{
  //
Future<bool>ContactRequest({ required BuildContext context ,required String subject ,required String message})async{
  var url =Uri.parse(ApiSettings.ContactRequest);
  var response = await http.post(
    url,
    body:{
      'subject':subject,
      'message':message,
    },
     headers: {
        HttpHeaders.authorizationHeader: CustomerPreferenceController().token,
        HttpHeaders.acceptHeader: 'application/json',
        },
  );
 if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse == true) {
        showSnackBar(
         context: context,
          message: jsonDecode(response.body)['message'],
        );
        return true;
      } else {
        showSnackBar(
          context: context,
          message: jsonDecode(response.body)['message'],
        );
        return false;
      }
    } else if (response.statusCode == 400) {
      //
    }
  return false;

  }
}



