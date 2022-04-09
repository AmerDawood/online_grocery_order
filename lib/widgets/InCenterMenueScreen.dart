import 'package:flutter/material.dart';
class InCenterMenueScreen extends StatelessWidget {
  const InCenterMenueScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Image(
            image: AssetImage(
              'images/Bg.png',
            ),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Upto 40% Off',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(14, 164, 79, 1),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '  New Launches, Pulses, Atta',
                  style: TextStyle(
                    fontSize: 21,
                    color: Color.fromRGBO(54, 89, 106, 1),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Rice & other Gains.',
                  style: TextStyle(
                    fontSize: 21,
                    color: Color.fromRGBO(54, 89, 106, 1),
                  ),
                ),
                SizedBox(height: 5,),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacementNamed(context, '/details_products_screen');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(251, 109, 58, 1),
                  ),
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(251, 251, 251, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
