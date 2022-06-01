import 'package:grocery_order/models/customer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerPreferenceController {
  static final CustomerPreferenceController _instance =
  CustomerPreferenceController._internal();

  late SharedPreferences _sharedPreferences;

  CustomerPreferenceController._internal();

  factory CustomerPreferenceController(){
    return _instance;
  }

  Future<void> initSharedPreference() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveCustomer({required Customer customer}) async {
    _sharedPreferences.setBool('logged_in', true);
    _sharedPreferences.setInt('id', customer.id);
    _sharedPreferences.setString('Name', customer.name);
    _sharedPreferences.setString('mobile', customer.mobile);
    _sharedPreferences.setString('gender', customer.gender);
    _sharedPreferences.setString('token', "Bearer ${customer.token}");
    _sharedPreferences.setBool('isActive', customer.active);
  }

  String get name => _sharedPreferences.getString('Name')??'';
  String get mobile => _sharedPreferences.getString('mobile')??'';


  String get token => _sharedPreferences.getString('token') ?? '';

  bool get loggedIn => _sharedPreferences.getBool('logged_in') ?? false;
      Future<bool> loggedOut()async{
     return await _sharedPreferences.clear();
   }

}