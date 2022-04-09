
import 'package:shared_preferences/shared_preferences.dart';

class AppSettingsPreferances{
  late SharedPreferences _sharedPreferences;

  static final  AppSettingsPreferances _instance = AppSettingsPreferances._internal();
  AppSettingsPreferances._internal();

  factory AppSettingsPreferances(){
    return _instance;
  }
  Future<void>initPreferances()async{
    _sharedPreferences =await SharedPreferences.getInstance();
  }

  Future<void>SaveLanguage({required String language})async{
    await  _sharedPreferences.setString('language', language);
  }
  String get langCode =>_sharedPreferences.getString('language')??'ar';


}


