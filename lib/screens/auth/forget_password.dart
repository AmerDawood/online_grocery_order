import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grocery_order/api/controllars/customer_api_controller.dart';
import 'package:grocery_order/screens/auth/reset_password.dart';
import 'package:grocery_order/screens/auth/widget/custom_button.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';
import 'package:grocery_order/widgets/arrow_back_widget.dart';
import 'package:grocery_order/widgets/button.dart';

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
      backgroundColor: Color.fromARGB(255, 237, 232, 228),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              ArrowBack(route: '/sign_in'),
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

              CustomTextField(
                textEditingController: _mobileEditingController,
                text: 'Mobile',
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 20),
              ButtonWidget(fun: (){
                performReset();
              }, text: 'Restart Password'),
            ],
          ),
        ),
      ),
    );
  }



  Future<void> performReset() async {
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
