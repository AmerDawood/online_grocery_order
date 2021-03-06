import 'package:grocery_order/models/category.dart';
import 'package:grocery_order/models/contact_requests%20.dart';
import 'package:grocery_order/screens/auth/forget_password.dart';
import 'package:grocery_order/screens/auth/reset_password.dart';

class ApiSettings{
  static const _API_URL ='https://smart-store.mr-dev.tech/api/';
  static const LOGIN =_API_URL +'auth/login';
  static const REGISTER =_API_URL +'auth/register';
    static const activate = _API_URL + 'auth/activate';
  static const ForgetPassword =_API_URL +'auth/forget-password';
  static const ResetPassword =_API_URL +'auth/reset-password?={code}';
  static const Category =_API_URL +'categories';
  static const Product =_API_URL +'products';
  static const OffersProducts =_API_URL+'offers';
  static const ContactRequest =_API_URL+'contact-requests';
    static const CITIES_URL = _API_URL + 'cities';

}
