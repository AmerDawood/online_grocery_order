import 'package:flutter/material.dart';
class SearchAndFiltter extends StatelessWidget {
  const SearchAndFiltter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
      decoration: BoxDecoration(
      color: Colors.white,
         borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade100,
            ),
          ),
          hintText: 'Any food search here',
          suffixIcon: Icon(Icons.search),
          hintStyle: TextStyle(
            fontSize: 19,
          ),
          labelStyle: TextStyle(
            fontSize: 20,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade100,
            ),
          ),
        ),
      ),
    ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsetsDirectional.all(5),
            padding: EdgeInsetsDirectional.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child:InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                width: 60,
                height: 50,
                child: Image(
                image: AssetImage('image_drawer/filter.png',
                ),
                height: 42,
              ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
