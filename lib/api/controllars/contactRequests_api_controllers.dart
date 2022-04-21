import 'dart:convert';
import 'package:grocery_order/api/api_settings.dart';
import 'package:grocery_order/models/contact_requests%20.dart';
import 'package:http/http.dart' as http;
import '../../models/contact_requests .dart';
import '../../prefs/customer_preferance_controller.dart';
class ContactRequestsApiController{
  //{required String subject ,required String message}
Future<bool>ContactRequest( )async{
  var url =Uri.parse(ApiSettings.ContactRequest);
  var response = await http.post(
    url,
    body:{
      // 'subject':subject,
      // 'message':message,
    }
  );
if(response.statusCode==200){
    var jsonResponse = jsonDecode(response.body);
    ContactRequests contactRequests =ContactRequests.fromJson(jsonResponse['']);
    return true;
  }else if(response.statusCode==400){
   //
  }
  return false;

  }
}