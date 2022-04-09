import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton( onPressed: (){
          Navigator.pushReplacementNamed(context, '/profile_screen');

        },icon:Icon(Icons.arrow_back_ios)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Personal Information',
          style: TextStyle(color: Colors.black,
          fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        child: ListView(
          children: [
            Text(
              'First name',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade500,
                  ),
                ),
                // labelText: 'Email',
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
              height: 10,
            ),
            Text(
              'Last name',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade500,
                  ),
                ),
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
              height: 10,
            ),
            Text(
              'Email Adders',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade500,
                  ),
                ),
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
              height: 10,
            ),
            Text(
              'phone no.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      labelText: '+972',
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
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade500,
                        ),
                      ),
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
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'About',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              maxLines: 10,
              minLines: 1,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade500,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                fixedSize:  Size(double.infinity, 50),
              ),

              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile_screen');

              },
              child: Text(
                'Update Profile',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
