import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final Function function;
  final String text;
  final Color color;
  CustomButton({
    required this.text,
    required this.color,
    required this.function,
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        function();
      },
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(248, 226, 210, 1),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
