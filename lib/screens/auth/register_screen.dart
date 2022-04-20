import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_order/api/controllars/customer_api_controller.dart';
import 'package:grocery_order/screens/auth/widget/custom_button.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with Helpers {
  late TextEditingController _fullNameEditingController;
  late TextEditingController _mobileEditingController;
  late TextEditingController _passwordEditingController;
  // late TextEditingController _STORE_API_KEYEditingController;
  late TextEditingController _genderEditingController;
  late TextEditingController _cityEditingController;
  final StoreApiKey ='17956537-62bb-45ba-aaf0-f12705b144c8' ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullNameEditingController = TextEditingController();
    _mobileEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _cityEditingController = TextEditingController();
    // _STORE_API_KEYEditingController = TextEditingController();
    _genderEditingController=TextEditingController();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _fullNameEditingController.dispose();
    _mobileEditingController.dispose();
    _passwordEditingController.dispose();
    _cityEditingController.dispose();
    // _STORE_API_KEYEditingController.dispose();
    _genderEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 250, 247, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
             
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Sign Up',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(75, 88, 101, 1),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/sign_in');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(248, 226, 210, 1),
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 130, 54, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'First login your account.',
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(119, 119, 119, 1),
                fontSize: 20,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                text: 'Full Name',
                textEditingController: _fullNameEditingController,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                text: 'Mobile',
                textEditingController: _mobileEditingController,
              ),
              SizedBox(
                height: 15,
              ),

              CustomTextField(
                text: 'Password',
                textEditingController: _passwordEditingController,
              ),
             
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 10),
              
              // CustomTextField(
              //   text: 'Gender',
              //   textEditingController: _genderEditingController,
              // ),
              TextField(
                controller:_genderEditingController,
              ),
                SizedBox(height: 10),
              
              CustomTextField(
                text: 'City Id',
                textEditingController: _cityEditingController,
              ),
             SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Get Started',
                color: Color.fromRGBO(255, 130, 54, 1),
                function: () async => await performRegister(),
              ),
              SizedBox(
                height: 10,
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Future<void> performRegister() async {
    if (checkData()) {
      await register();
    }
  }

  bool checkData() {
    if (_fullNameEditingController.text.isNotEmpty &&
        _mobileEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty &&
        _cityEditingController.text.isNotEmpty &&
        _genderEditingController.text.isEmpty&&
        StoreApiKey.isNotEmpty
        // _STORE_API_KEYEditingController.text.isNotEmpty
        ) {
      return true;
    }
    showSnackBar(context: context, message: 'Enter required data', error: true);
    return false;
  }

  Future<void> register() async {
    bool status = await CustomerApiController().register(
      context: context,
      gender: _genderEditingController.text,
      name: _fullNameEditingController.text,
      mobile: _mobileEditingController.text,
      password: _passwordEditingController.text,
      city: _cityEditingController.text,
      StorApiKey: '17956537-62bb-45ba-aaf0-f12705b144c8',
      // StorApiKey: StoreApiKey,
    );
    if (status) {
      Navigator.pushReplacementNamed(context, '/main_screen');
    } else {
      showSnackBar(context: context, message: 'Login failed', error: true);
    }
  }
}
