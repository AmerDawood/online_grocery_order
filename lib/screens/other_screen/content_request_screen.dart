import 'package:flutter/material.dart';
import 'package:grocery_order/screens/auth/widget/custom_text_field.dart';
import 'package:grocery_order/utils/helpers.dart';

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
      
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
              'If you want to Content Request !!',
              style: TextStyle(
                fontSize:25,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
            Text(
             'Lorem Ipsum is simply dummy text of the printing and typesetting industry.' 
             'Lorem Ipsum has been the industr s standard dummy text ever since the 1500s,' ,
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
            ),
            child: CustomTextField(
              textEditingController: subjectEditingController, 
              text:'Enter Subject'
              ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: ElevatedButton(
              onPressed: ()async =>  await performRequest(),
            child: Text('Submit')
            ),
          ), 
          ],
        ),
      ),
    );
  }



 Future<void> performRequest() async {
    if (checkData()){
      await login();
    }
  }

  bool checkData() {
    if (textEditingController.text.isNotEmpty && subjectEditingController.text.isNotEmpty){
      return true;
    }
    return false;
  }
  Future<void> login() async {
   bool request=  await ContactRequestsApiController().ContactRequest(
    // subject: 'subjectEditingController.text',
    //    message:'textEditingController.text',
   );
    if (request) {
      showSnackBar(context: context, message: 'Add Content Request successfully', error: false);
    } else {
      showSnackBar(context: context, message: 'Something Error', error: true);
    }
  }
}




