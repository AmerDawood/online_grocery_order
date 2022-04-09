import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grocery_order/api/controllars/customer_api_controller.dart';
import 'package:grocery_order/screens/auth/reset_password.dart';
import 'package:grocery_order/screens/auth/widget/custom_button.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> with Helpers {
  late TextEditingController _mobileEditingController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileEditingController =TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _mobileEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(254, 250, 247, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/sign_in');
          },
          icon: Icon(
              Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              SizedBox(height: 25,),
              Text(
                'Forgot password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),

              CustomText(text: 'Enter the email address associated with your account.',
                  fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),

              CustomTextField(
                textEditingController: _mobileEditingController,
                text: 'Mobile',
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () async => await performLogin(),
              //   style: ElevatedButton.styleFrom(
              //     primary: Color.fromRGBO(255, 130, 54, 1),
              //     fixedSize: Size(400, 60),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: Text(
              //     'Reset Password',
              //     style: TextStyle(
              //       fontSize: 24,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              CustomButton(text: 'Reset Password', color: Color.fromRGBO(255, 130, 54, 1),
                  function: ()async =>await performLogin(),),

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
    if (_mobileEditingController.text.isNotEmpty) {
      return true;
    }

    return false;
  }

  Future<void> login() async {
    bool status = await CustomerApiController().forgetPassword(
      context: context,
      mobile: _mobileEditingController.text,
    );
    if (status) {
      // Navigator.pushReplacementNamed(context, '/reset_password');
      //OR
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ResetPassword(
                  mobile: _mobileEditingController.text
              ),
        ),
      );
    } else {
      showSnackBar(context: context, message: 'Login failed', error: true);
    }
  }















}
