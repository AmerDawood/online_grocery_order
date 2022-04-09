import 'package:flutter/material.dart';
class StackToGategory extends StatelessWidget {
  // const StackToGategory({
  //   Key? key,
  // }) : super(key: key);
  final String title;
  final Image image;
  StackToGategory({
    required this.title,
    required this.image,
});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          width: 120,
          margin: EdgeInsetsDirectional.only(end: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(54, 89, 106, 1),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 12, horizontal: 9.5),
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
            ),
            child:image,
          ),
        ),
      ],
    );
  }
}
