

import 'package:flutter/material.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/widgets/arrow_back_widget.dart';
import 'package:grocery_order/widgets/button.dart';

import '../../api/controllars/city_api_controller.dart';
import '../../api/controllars/customer_api_controller.dart';
import '../../models/city/city.dart';
import '../../utils/helpers.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with Helpers {
  int preFixId = 1;
  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;
  String? selectedGender;
  int? _selectedCity;



  late TextEditingController _usernameTextController;

  late TextEditingController _mobileTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _confirmPasswordTextController;

  String? _usernameError;

  String? _phoneNumberError;
  String? _passwordError;
  String? _confirmPasswordError;
  List<City> cities = [];
  late Future<List<City>> _futureCities;
  List<DropdownMenuItem> citiesItem = [];

  @override
  void initState() {
    super.initState();
    _usernameTextController = TextEditingController();
    _mobileTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _confirmPasswordTextController = TextEditingController();
    _futureCities = CityApiController().getUsers();
    _usernameTextController.text = TextEditingController().text;
    _mobileTextController.text =TextEditingController().text;
    _passwordTextController.text =TextEditingController().text;
    _confirmPasswordTextController.text = TextEditingController().text;
    selectedGender = 'M';
    _selectedCity = 1;
  }

  @override
  void dispose() {
    _usernameTextController.dispose();
    _mobileTextController.dispose();
    _passwordTextController.dispose();
    _confirmPasswordTextController.dispose();
    super.dispose();
  }

  double? _progressValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 232, 228),
     
      body: Padding(
 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
         child: ListView(
          children: [
           
          
             Row(
               children: [
            
            ArrowBack(route: '/sign_in'),

               ],
             ),
            const SizedBox(height: 30),
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
            LinearProgressIndicator(
              value: _progressValue,
              color: Colors.deepOrangeAccent,
              backgroundColor: Colors.transparent,
              minHeight: 4,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              

                                CustomTextField(
                  text: 'Name',
                  textEditingController: _usernameTextController,
                ),
                  const SizedBox(height: 10),

                  
                  // ),
                               CustomTextField(
                  text: 'Phone',
                  textEditingController: _mobileTextController,
                ),
                  const SizedBox(height: 10),

                                         CustomTextField(
                  text: 'Password',
                  textEditingController: _passwordTextController,
                ),
                  const SizedBox(height: 10),
                 
                                         CustomTextField(
                  text: 'Confirm Password',
                  textEditingController: _confirmPasswordTextController,
                ),
                  const SizedBox(height: 20),

                  // Gender ------------------------------------------------------
               
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                            title: const Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            activeColor: Colors.deepOrangeAccent,
                            value: 'M',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                if (value != null) selectedGender = value;
                              });
                            }),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                            title: const Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            selectedTileColor: Colors.deepOrangeAccent,
                            activeColor: Colors.deepOrangeAccent,
                            value: 'F',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                if (value != null) selectedGender = value;
                              });
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // City --------------------------------------------------------
                
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: FutureBuilder<List<City>>(
                      future: _futureCities,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(
                            child: LinearProgressIndicator(
                              color: Colors.deepOrangeAccent,
                              backgroundColor: Colors.grey.shade200,
                            ),
                          );
                        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                          cities = snapshot.data!;
                          return DropdownButton<int>(
                            menuMaxHeight: 200,
                            hint: const Text('Select City'),
                            onTap: () {},
                            onChanged: (int? value) {
                              setState(() {
                                _selectedCity = value;
                              });
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            isExpanded: true,
                            value: _selectedCity,
                            items: cities.map((City city) {
                              return DropdownMenuItem<int>(
                                  value: city.id, child: Text(city.nameEn));
                            }).toList(),
                          );
                        } else {
                          return DropdownButton<int>(
                              menuMaxHeight: 200,
                              hint: const Text('Select City'),
                              onTap: () {},
                              onChanged: (int? value) {},
                              icon: const Icon(Icons.keyboard_arrow_down),
                              isExpanded: true,
                              value: _selectedCity,
                              items: const []);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                ButtonWidget(fun: (){
                  performSignUp();
                }, text: 'Register Now'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeProgressValue({required double? value}) {
    setState(() {
      _progressValue = value;
    });
  }


  Future<void> performSignUp() async {
    if (checkData()) {
      await signUp();
    }
  }

  bool checkData() {
    if (checkFieldError()) {
      return true;
    }
    showSnackBar(
        context: context, message: 'Enter required data', error: true);
    return false;
  }

  bool checkFieldError() {
    bool username = checkUsername();
    // bool email = checkEmail();
    bool mobile = checkMobile();
    bool password = checkPassword();
    bool confirmPassword = checkConfirmPassword();
    bool gender = checkGender();

    setState(() {
      _usernameError = !username ? 'Enter username !' : null;
      // _emailError = !email ? 'Enter email !' : null;
      _phoneNumberError = !mobile ? 'Enter phone number !' : null;
      _passwordError = !password ? 'Enter password !' : null;
      _confirmPasswordError =
          !confirmPassword ? 'Enter confirm password !' : null;
    });
    // if (username && email && phoneNumber && password && confirmPassword) {
    if (username &&
        mobile &&
        gender &&
        checkCity() &&
        password &&
        confirmPassword) {
      return true;
    } else {
      return false;
    }
  }

  bool checkUsername() {
    if (_usernameTextController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  bool checkMobile() {
    if (_mobileTextController.text.isNotEmpty) {
      if (_mobileTextController.text.length >= 7) {
        return true;
      } else {
        // showSnackBar(
        //     context: context,
        //     message: 'Enter correct mobile by Length >= 7!',
        //     error: true,
        //     time: 1);
        _phoneNumberError = 'Enter correct mobile by Length >= 7!';
        return false;
      }
    } else {
      return false;
    }
  }

  bool checkGender() {
    if (selectedGender != null) {
      return true;
    }
    // showSnackBar(
    //     context: context, message: 'Choose the gender!', error: true, time: 1);
    return false;
  }

  bool checkCity() {
    if (_selectedCity != null) {
      return true;
    }
    return false;
  }

  bool checkPassword() {
    if (_passwordTextController.text.isNotEmpty) {
      if (_passwordTextController.text.length >= 4) {
        return true;
      } else {
        showSnackBar(
            context: context,
            message: 'Enter correct password!',
            error: true,
           );
        return false;
      }
    } else {
      return false;
    }
  }

  bool checkConfirmPassword() {
    if (_confirmPasswordTextController.text.isNotEmpty) {
      if (_confirmPasswordTextController.text.length >= 4) {
        if (_confirmPasswordTextController.text ==
            _passwordTextController.text) {
          return true;
        } else {
          showSnackBar(
              context: context,
              message: 'Two password are not equaled!',
              error: true,
              );
          return false;
        }
      } else {
        showSnackBar(
            context: context,
            message: 'Enter correct password!',
            error: true,
            );
        return false;
      }
    } else {
      return false;
    }
  }

  Future<void> signUp() async {
    String mobile = _mobileTextController.text.startsWith('0')
        ? _mobileTextController.text
            .substring(1, _mobileTextController.text.length)
        : _mobileTextController.text;
    _changeProgressValue(value: null);
    bool status = await CustomerApiController().register(
      name: _usernameTextController.text,
      mobile: mobile,
      password: _passwordTextController.text,
      gender: selectedGender!,
      STORE_API_KEY: '17956537-62bb-45ba-aaf0-f12705b144c8',
      cityId: _selectedCity.toString(),
      context: context,
    );
    _changeProgressValue(value: status ? 1 : 0);
    if (status) {
      // CustomerInformationGetXController.to.setPhoneNumber(_mobileTextController.text);
      Navigator.pushReplacementNamed(context, '/active_account');
    }
  }
}

