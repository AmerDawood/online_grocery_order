import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_order/api/controllars/customer_api_controller.dart';
import 'package:grocery_order/screens/auth/page_view_screen.dart';
import 'package:grocery_order/screens/auth/widget/custom_button.dart';
import 'package:grocery_order/screens/auth/widget/custom_social_button.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> with Helpers {
  late TextEditingController mobileTextController;
  late TextEditingController passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mobileTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    mobileTextController.dispose();
    passwordTextController.dispose();
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
                height: 50,
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CustomText(
                    color: Colors.black,
                    text: 'Sign in',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  CustomButton(
                    function: () {
                      Navigator.pushReplacementNamed(context, '/sign_up');
                    },
                    text: 'Sign Up',
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              CustomText(
                text: 'First login your account.',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                text: 'Mobile',
                textEditingController: mobileTextController,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                text: 'Password',
                textEditingController: passwordTextController,
              ),
              SizedBox(height: 10),
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
              ElevatedButton(
                onPressed: () async => await performLogin(),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(255, 130, 54, 1),
                  fixedSize: Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.orange,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
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
                    child:
                    CustomText(
                      text: 'Login with social',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSocialButton(
                    imageUrl: 'images/facebook.png',
                    function: (){},
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomSocialButton(
                    imageUrl: 'images/Google.png',
                    function: (){},
                  ),

                  SizedBox(
                    width: 20,
                  ),
                  CustomSocialButton(
                    imageUrl: 'images/twitter.png',
                    function: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (mobileTextController.text.isNotEmpty &&
        passwordTextController.text.isNotEmpty){
      return true;
    }
    return false;
  }
  Future<void> login() async {
    bool customer = await CustomerApiController().login(
      mobile: mobileTextController.text,
      password: passwordTextController.text,
    );
    if (customer) {
      Navigator.pushReplacementNamed(context, '/main_screen');
      showSnackBar(context: context, message: 'Login successfully', error: false);
    } else {
      showSnackBar(context: context, message: 'Login failed', error: true);
    }
  }
}


