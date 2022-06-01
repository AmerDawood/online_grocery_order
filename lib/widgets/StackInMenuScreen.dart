import 'package:flutter/material.dart';

class StackToCategory extends StatelessWidget {
  // const StackToGategory({
  //   Key? key,
  // }) : super(key: key);
  final String title;
  final String imageUrl;
  StackToCategory({
    required this.title,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child:  Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.network(imageUrl),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(54, 89, 106, 1),
                ),
              ),
            ),
          ],
        ),
        ),
       
      ],
    );
  }
}
