import 'package:flutter/material.dart';
import 'package:grocery_order/api/controllars/customer_api_controller.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';
import 'package:grocery_order/widgets/CodeTextField.dart';
import 'package:grocery_order/widgets/arrow_back_widget.dart';
class ResetPassword extends StatefulWidget {
  final String mobile;
  const ResetPassword({Key? key , required this.mobile}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> with Helpers {


  String? _code;

  late TextEditingController _firstCodeEditingController;
  late TextEditingController _secondCodeEditingController;
  late TextEditingController _thirdCodeEditingController;
  late TextEditingController _forthCodeEditingController;
  late TextEditingController _passwordEditingController;
  late TextEditingController _ConfirmpasswordEditingController;
  late TextEditingController  _mobileEditingController;


  late FocusNode _firstFocusNote;
  late FocusNode _secondFocusNote;
  late FocusNode _thirdFocusNote;
  late FocusNode _forthFocusNote;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordEditingController = TextEditingController();
    _ConfirmpasswordEditingController = TextEditingController();
    _firstCodeEditingController = TextEditingController();
    _secondCodeEditingController = TextEditingController();
    _thirdCodeEditingController = TextEditingController();
    _forthCodeEditingController = TextEditingController();
    _mobileEditingController =TextEditingController();



    _firstFocusNote = FocusNode();
    _secondFocusNote = FocusNode();
    _thirdFocusNote = FocusNode();
    _forthFocusNote = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _passwordEditingController.dispose();
    _ConfirmpasswordEditingController.dispose();
    _firstCodeEditingController.dispose();
    _secondCodeEditingController.dispose();
    _thirdCodeEditingController.dispose();
    _forthCodeEditingController.dispose();
    _mobileEditingController =TextEditingController();

    _firstFocusNote.dispose();
    _secondFocusNote.dispose();
    _thirdFocusNote.dispose();
    _forthFocusNote.dispose();

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
                'Reset password',
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
              Text(
                'Please sign up to enter in a app.',
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(height: 15,),

            // Enter Code
              Row(
                children: [
                  Expanded(
                    child: CodeTextField(
                      onChange: (String value) {
                        if (value.isNotEmpty) _secondFocusNote.requestFocus();
                      },
                      firstCodeEditingController: _firstCodeEditingController,
                      firstFocusNote: _firstFocusNote,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CodeTextField(
                      onChange: (String value) {
                        if (value.isNotEmpty)
                          _thirdFocusNote.requestFocus();
                        else
                          _firstFocusNote.requestFocus();
                      },
                      firstCodeEditingController: _secondCodeEditingController,
                      firstFocusNote: _secondFocusNote,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CodeTextField(
                      onChange: (String value) {
                        if (value.isNotEmpty)
                          _forthFocusNote.requestFocus();
                        else
                          _secondFocusNote.requestFocus();
                      },
                      firstCodeEditingController: _thirdCodeEditingController,
                      firstFocusNote: _thirdFocusNote,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CodeTextField(
                      onChange: (String value) {
                        if (value.isEmpty) _thirdFocusNote.requestFocus();
                      },
                      firstCodeEditingController: _forthCodeEditingController,
                      firstFocusNote: _forthFocusNote,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),

              CustomTextField(textEditingController: _mobileEditingController, text: 'Mobile'),

              SizedBox(
                height: 15,
              ),
              CustomTextField(textEditingController: _passwordEditingController, text: 'Password'),

              SizedBox(
                height: 15,
              ),
              CustomTextField(textEditingController: _ConfirmpasswordEditingController, text: 'Confirm Password'),

              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () async => await performResetPassword(),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 130, 54, 1),
                    fixedSize: Size(400, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Update Password',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }









  Future<void> performResetPassword() async {
    if (checkData()) {
      await resetPassword();
    }
  }

  bool checkData() {
    if (checkCode()) {
      if (checkPassword()) {
        return true;
      }
    }

    return false;
  }


  bool checkCode() {
    if (_firstCodeEditingController.text.isNotEmpty &&
        _secondCodeEditingController.text.isNotEmpty &&
        _thirdCodeEditingController.text.isNotEmpty &&
        _forthCodeEditingController.text.isNotEmpty)
    {
      _code = _firstCodeEditingController.text +
          _secondCodeEditingController.text +
          _thirdCodeEditingController.text +
          _forthCodeEditingController.text;
      return true;
    } else {
      showSnackBar(
          context: context, message: 'Enter Required data', error: true);

      return false;
    }
  }

  bool checkPassword() {
    if (_passwordEditingController.text.isNotEmpty &&
        _ConfirmpasswordEditingController.text.isNotEmpty) {
      if (_passwordEditingController.text ==
          _ConfirmpasswordEditingController.text) {
        return true;
      }
      showSnackBar(
          context: context,
          message: 'Password Confirmation error',
          error: true);
    }
    return false;
  }

  Future<void> resetPassword() async {
    bool status = await CustomerApiController().resetPassword(
        context: context,
        mobile: widget.mobile,
        code: _code!,
        password: _passwordEditingController.text
    );
    if (status) Navigator.pushReplacementNamed(context, '/sign_in');
  }












}
