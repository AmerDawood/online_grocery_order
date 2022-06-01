import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {

  final String text;
  final Function fun;


   ButtonWidget({
     required this.fun,
     required this.text,
   });

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                onPressed: () async => await fun(),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(255, 130, 54, 1),
                  fixedSize: Size(400, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.orange,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              );
  }
}