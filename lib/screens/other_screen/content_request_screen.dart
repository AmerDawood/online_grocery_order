import 'package:flutter/material.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';
import 'package:grocery_order/widgets/arrow_back_widget.dart';
import 'package:grocery_order/widgets/button.dart';

import '../../api/controllars/contactRequests_api_controllers.dart';

class ContentRequestScreen extends StatefulWidget{
  @override
  State<ContentRequestScreen> createState() => _ContentRequestScreenState();
}

class _ContentRequestScreenState extends State<ContentRequestScreen> with Helpers{
  late TextEditingController textEditingController;
  late TextEditingController subjectEditingController;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController =TextEditingController();
    subjectEditingController=TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    subjectEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 246, 249, 1),
      
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                ArrowBack(route: '/main_screen'),
              ],
            ),
            SizedBox(height: 30,),

            Text(
            'If you want to Content Request !!',
            style: TextStyle(
            fontSize:25,
            fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10,),
            Text(
             'Lorem Ipsum is simply dummy text of the printing and typesetting industry.' 
             'Lorem Ipsum has been the industr' ,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            ),
          Padding(
            padding: const EdgeInsets.only(
             top: 15,
             bottom: 10,
             left: 3,
             right: 3,
            ),
            child: CustomTextField(
              textEditingController: textEditingController, 
              text:'Enter Title'
              ),
          ),


          Padding(
            padding: const EdgeInsets.only(
             top: 15,
             bottom: 10,
              left: 3,
             right: 3,
            ),
            child: CustomTextField(
              textEditingController: subjectEditingController, 
              text:'Enter Subject'
              ),
          ),
          SizedBox(height: 10,),
             ButtonWidget(fun: (){
               performRequest();

             }, text: 'Sent Content Request'),
          ],
        ),
      ),
    );
  }



 Future<void> performRequest() async {
    if (checkData()){
      await Request();
    }
  }

  bool checkData() {
    if (textEditingController.text.isNotEmpty && subjectEditingController.text.isNotEmpty){
      return true;
    }
    return false;
  }
  Future<void> Request() async {
   bool request=  await ContactRequestsApiController().ContactRequest(
    subject: subjectEditingController.text,
       message:textEditingController.text,
       context: context,
   );
    if (request) {
      showSnackBar(context: context, message: 'Something Error', error: true);

    } else {
      showSnackBar(context: context, message: 'Add Content Request successfully', error: false);

    }
  }
}




