import 'dart:ui';

import 'package:flutter/material.dart';
class CustomSocialButton extends StatelessWidget {
final String imageUrl;
final Function function;
CustomSocialButton({
  required this.function,
  required this.imageUrl,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: InkWell(
        onTap: () {function();},
        child: Image(
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
