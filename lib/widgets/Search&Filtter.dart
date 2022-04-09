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
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey.shade500,
                ),
              ),
              hintText: 'Any food search here',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search,color: Colors.grey,),
              ),
              labelStyle: TextStyle(
                fontSize: 20,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.orange,
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

              border: Border.all(color:Colors.grey),
              borderRadius: BorderRadius.circular(10),



            ),
            child:InkWell(
              onTap: (){},
              child: Image(
                image: AssetImage('image_drawer/filter.png',
                ),
                height: 42,

              ),
            ),
          ),
        ),
        /*

         */

      ],
    );
  }
}
