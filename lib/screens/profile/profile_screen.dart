import 'package:flutter/material.dart';
import 'package:grocery_order/screens/launch_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(onPressed:
            ()=>Navigator.pushReplacementNamed(context, '/main_screen'),
          icon: Icon(Icons.arrow_back,size: 30,),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.search,size: 30,),),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: ListView(
          children: [
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                leading:CircleAvatar(
                  radius: 20,
                  backgroundImage:AssetImage(
                      'image_drawer/img - user.png',

                    ),
                  ),



                title: Text(
                  'Madbrains',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'lovepreetmadbrains@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/personal_information');
                  },
                  icon: Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Personal information',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Last update 2/09/2020',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                      Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Delivery address',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Last update 2/09/2020',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Payment method',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Credit card',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Payment method',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Credit card  **** **** **** 5642',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'English',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Last update 2/09/2020',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(

              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: ListTile(

                title: Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Last update 2/09/2020',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),


                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
/*
 Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
            ),
          ),
 */