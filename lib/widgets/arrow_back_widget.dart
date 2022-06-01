
import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  // const ArrowBack({ Key? key }) : super(key: key);
  final String route;
ArrowBack({required this.route});

  @override
  Widget build(BuildContext context) {
    return 
              InkWell(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: InkWell(
                      
                         onTap:(){
                  Navigator.pushReplacementNamed(context, route);
                      },
                      child: Icon(
                      
                      Icons.arrow_back_ios,
                        size: 23,
                      ),
                    ),
                    
                  ),
                ),
              );
  }
}