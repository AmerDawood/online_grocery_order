
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/city/base_response_city.dart';
import '../../models/city/city.dart';
import '../api_settings.dart';


class CityApiController {

  Future<List<City>> getUsers() async{

    var url = Uri.parse(ApiSettings.CITIES_URL);
    var response = await http.get(url,headers: {
      'Accept':'application/json'
    });
    if(response.statusCode == 200){
      print('success');
      BaseResponseCity<City> baseResponseCity =BaseResponseCity.fromJson(jsonDecode(response.body));
      return baseResponseCity.list;
    }else if(response.statusCode == 400){
      print('Faild');
    }else{
      print('Faild2');

    }
    return [];
  }
}