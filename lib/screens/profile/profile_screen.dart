import 'package:flutter/material.dart';
import 'package:grocery_order/screens/auth/widget/custom_text.dart';
import 'package:grocery_order/screens/launch_screen.dart';
import 'package:grocery_order/widgets/arrow_back_widget.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 1),
     
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10,),
              child: Row(
              
                children: [
                  
                  ArrowBack(route: '/main_screen'),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: CustomText(text: 'Profile Screen', fontSize:25, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                      color: Colors.white,
                     borderRadius: BorderRadius.circular(60),
                      ),       
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.search,color: Colors.black,),
                      ),             
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20,top: 20),
              child: Container(
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Center(
                  child: ListTile(
                    leading:Image.asset('image_drawer/img - user.png'),
                    trailing: Container(
                      width: 50,
                      height: 50,
                      
                      decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                     borderRadius: BorderRadius.circular(60),
                      ),       
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.edit,color: Colors.black,),
                      ),             
                    ),
                    title: Text('Amer Dawood'),
                    subtitle: Text('amermadawood@gmail.com'),
                  ),
                ),
              ),
            ),
                
           CartWidget(text1: 'Personal Information',text2: 'Last Update 2/09/2020',),
           CartWidget(text1: 'Delivery address',text2: 'Last Update 2/09/2020',),
           CartWidget(text1: 'Payment method',text2: 'Cridet card',),
           CartWidget(text1: 'Language',text2: 'English',),
           CartWidget(text1: 'Change Password',text2: 'English',),
           CartWidget(text1: 'Notification',text2: 'Last Update 2/09/2020',),


      
          
          ],
        ),
      ),

    );
  }

}

class CartWidget extends StatelessWidget {
final String text1;
final String text2;
CartWidget({
  required this.text1,
  required this.text2,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
              child: Container(
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Center(
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text(text1,style: TextStyle(
                      fontSize: 20,
                    ),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text(text2,style: TextStyle(
                        fontSize: 15,
                      ),),
                    ),
                  ),
                ),
              ),
            );
  }
}
