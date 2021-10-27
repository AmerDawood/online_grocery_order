import 'package:flutter/material.dart';
import 'package:grocery_order/screens/page_view_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              InkWell(
                onTap: (){},
                child: Image(
                  image: AssetImage(
                    'images/Button - Back.png',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(75, 88, 101, 1),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/sign_up');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(248, 226, 210, 1),
                    ),
                    child: Text(
                      'Sign up',
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
              Text(
                'First login your account.',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(119, 119, 119, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
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
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/main_screen'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(255, 130, 54, 1),
                  fixedSize: Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
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
}
