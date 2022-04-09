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

class _SignUpState extends State<SignUp> with Helpers{
  late TextEditingController _fullNameEditingController;
  late TextEditingController _mobileEditingController;
  late TextEditingController _passwordEditingController;
  late TextEditingController _STORE_API_KEYEditingController;
  String _gender = 'M';
  // String _city ='1';
  late TextEditingController _cityEditingController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fullNameEditingController = TextEditingController();
    _mobileEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _cityEditingController =TextEditingController();
    _STORE_API_KEYEditingController =TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _fullNameEditingController.dispose();
    _mobileEditingController.dispose();
    _passwordEditingController.dispose();
    _cityEditingController.dispose();
    _STORE_API_KEYEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(254, 250, 247, 1),
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
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, '/sign_in');
                },

                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  child: Align(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios,size: 30,),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context,'/sign_in');
                      },
                      color: Color.fromRGBO(26, 43, 106, 1),
                    ),
                  ),
                  alignment: AlignmentDirectional.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [

                  CustomText(text: 'Sign Up', fontSize: 32, fontWeight: FontWeight.bold, color: Color.fromRGBO(75, 88, 101, 1),),
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
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                        value: 'M',
                        title: Text('Male'),
                        groupValue: _gender,
                        onChanged: (String? value) {
                          if(value !=null){
                            setState(() {
                              _gender = value;
                            });
                          }
                        }
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                        value: 'F',
                        title: Text('Female'),
                        groupValue: _gender,
                        onChanged: (String? value) {
                          if(value !=null){
                            setState(() {
                              _gender = value;
                            });
                          }
                        }
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _cityEditingController,
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _STORE_API_KEYEditingController,
                keyboardType: TextInputType.text,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, '/forget_password');
                    },
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(75, 88, 101, 1)),
                    ),
                  ),
                ],
              ),
              // ElevatedButton(
              //     onPressed: () async => await performRegister(),
              //   style: ElevatedButton.styleFrom(
              //     primary: Color.fromRGBO(255, 130, 54, 1),
              //     fixedSize: Size(400, 60),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text(
              //     'Get Started',
              //     style: TextStyle(
              //       fontSize: 24,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              CustomButton(text: 'Get Started', color: Color.fromRGBO(255, 130, 54, 1), function: ()async=>await performRegister(),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,

                    child: Divider(
                      height: 10,
                      thickness: 2,
                      color: Color.fromRGBO(169, 181, 199, 1),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '  Login with social',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(119, 119, 119, 1),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Divider(
                      height: 10,
                      thickness: 2,
                      color: Color.fromRGBO(169, 181, 199, 1),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child:InkWell(
                      onTap: (){},
                      child: Image(
                        image:
                        AssetImage(
                          'images/facebook.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    child:InkWell(
                      onTap: (){},
                      child: Image(
                        image:
                        AssetImage(
                          'images/Google.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    child: InkWell(
                      onTap: (){},
                      child: Image(
                        image:
                        AssetImage(
                          'images/twitter.png',
                        ),
                      ),
                    ),
                  ),
                ],
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
        _passwordEditingController.text.isNotEmpty&&
        _cityEditingController.text.isNotEmpty&&
        _STORE_API_KEYEditingController.text.isNotEmpty
    ) {
      return true;
    }
    showSnackBar(context: context, message: 'Enter required data',error: true);
    return false;
  }
  Future<void> register() async {
    bool status = await CustomerApiController().register(
        context: context,
        gender: _gender,
        name: _fullNameEditingController.text,
        mobile: _mobileEditingController.text,
        password: _passwordEditingController.text,
        city:_cityEditingController.text,
        // STORE_API_KEY: _STORE_API_KEYEditingController.text,
    );
    if (status) {

      Navigator.pushReplacementNamed(context, '/main_screen');
    } else {
      showSnackBar(context: context, message: 'Login failed', error: true);
    }
  }
}
