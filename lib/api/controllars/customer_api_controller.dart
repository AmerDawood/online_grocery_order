import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:grocery_order/api/api_settings.dart';
import 'package:grocery_order/models/customer.dart';
import 'package:grocery_order/prefs/customer_preferance_controller.dart';
import 'package:grocery_order/utils/helpers.dart';
import 'package:http/http.dart' as http;
class CustomerApiController with Helpers{

  Future<bool>login({required String mobile,required String password})async{
  var url =Uri.parse(ApiSettings.LOGIN);
  var response = await http.post(url,body: {
    'mobile':mobile,
    'password':password,

  });
  if(response.statusCode==200){
    var jsonResponse = jsonDecode(response.body);
    Customer customer =Customer.fromJson(jsonResponse['data']);
    CustomerPreferenceController().saveCustomer(customer: customer);
    return true;
  }else if(response.statusCode==400){
    //
  }
  return false;

  }


   // Register
  Future<bool> register({
    required BuildContext context,
    required String name,
    required String mobile,
    required String password,
    required String gender,
    required String city,
  }) async {
    var url = Uri.parse(ApiSettings.REGISTER);
    var response = await http.post(url, body: {
      'name': name,
      'mobile': mobile,
      'password': password,
      'gender': gender,
      'city':city,
      'STORE_API_KEY':'17956537-62bb-45ba-aaf0-f12705b144c8',
    });
    if (response.statusCode == 201) {
      showSnackBar(
        context: context,
        message: jsonDecode(response.body)['message'],);
      return true;
    } else if (response.statusCode == 400) {
      showSnackBar(
          context: context,
          message: jsonDecode(response.body)['message'],
          error: true);
    } else {
      showSnackBar(
          context: context,
          message: 'something error , try again',
          error: true
      );
    }
    return false;
  }




  //Forget Password
  Future<bool> forgetPassword({required BuildContext context ,required String mobile}) async {
    var url = Uri.parse(ApiSettings.ForgetPassword);
    var response = await http.post(url,body:{'mobile': mobile});
    if(response.statusCode==200){
      var jsonObject =jsonDecode(response.body);
      showSnackBar(context: context, message:jsonObject['message']);
      print('code ${jsonObject['code']}');
      return true;

    }else if(response.statusCode==400){
      var jsonObject =jsonDecode(response.body);
      showSnackBar(context: context, message:jsonObject['message'],error: true);
    }else{
      showSnackBar(
          context: context,
          message: 'something error , try again',
          error: true
      );
    }
    return false;

  }


  // Reset Password



  Future<bool> resetPassword({required
  BuildContext context ,
    required String mobile,
    required String code,
    required String password,

  }) async {
    var url = Uri.parse(ApiSettings.ResetPassword);
    var response = await http.post(url,body:{
      'mobile': mobile,
      'code': code,
      'password': password,
      'password_confirmation': password,


    });
    if(response.statusCode==200){
      var jsonObject =jsonDecode(response.body);
      showSnackBar(context: context, message:jsonObject['message']);
      return true;

    }else if(response.statusCode==400){
      var jsonObject =jsonDecode(response.body);
      showSnackBar(context: context,
          message:jsonObject['message'],error: true);
    }else{
      showSnackBar(
          context: context,

          message: 'something error , try again',
          error: true
      );
    }
    return false;

  }






}