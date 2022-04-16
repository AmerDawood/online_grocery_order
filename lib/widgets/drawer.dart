import 'dart:ui';

import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
          child: Image(
            image: AssetImage('images/pATTERN.png'),
          ),
        ),
        Container(
          width: 240,
          child: Drawer(
            child: ListView(
              children: [
                SizedBox(
                  height: 110,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, '/profile_screen');
                    },
                    child: Image(
                      image: AssetImage(
                        'image_drawer/Icon - Profile1.png',
                      ),
                    ),
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  leading: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Image(
                      image: AssetImage('image_drawer/Icon - about us.png'),
                    ),
                  ),
                  title: Text(
                    'About us',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  onTap: () {
                    // Navigator.pushNamed(context, '/login_screen');
                  },
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Image(
                        image: AssetImage('image_drawer/Icon - Articles.png'),
                      )),
                  title: Text(
                    'Articles',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  onTap: () {},
                  leading: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Image(
                      image: AssetImage('image_drawer/settings.png'),
                    ),
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  onTap: () {},
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Image(
                        image:
                        AssetImage('image_drawer/Icon - Need help.png'),
                      )),
                  title: Text(
                    'Need Help?',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  onTap: () {},
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/terms_of_services');
                      },
                      child: Image(
                        image: AssetImage(
                            'image_drawer/Icon - Term of services.png'),
                      )),
                  title: Text(
                    'Terms of Services',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                ListTile(
                  onTap: () {},
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/sign_in');
                      },
                      child: Image(
                        image: AssetImage('image_drawer/Logout.png'),
                      )),
                  title: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromRGBO(54, 89, 106, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'image_drawer/img - user.png',
                      ),
                      backgroundColor: Colors.white,
                    ),
                    title: Text(
                      'Amer Dawood',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),
                    ),
                    subtitle: Text(
                      'amermadawood@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(54, 89, 106, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
