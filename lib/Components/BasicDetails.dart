import 'package:flutter/material.dart';

import '../constants.dart';

class BasicDetails extends StatelessWidget {
  const BasicDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/logo.png', height: 49, width: 47),
        SizedBox(width: 0.043 * height),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aditya Birla Cap',
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            Row(
              children: [
                Icon(Icons.signal_cellular_alt,
                    color: Color(0xFFFFC371), size: 23),
                SizedBox(width: 2),
                Text(
                  '1200.0',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
                SizedBox(width: 0.002 * height),
                Icon(Icons.arrow_drop_up, color: Color(0xFF62EB56), size: 23),
                SizedBox(width: 0.001 * height),
                Text(
                  '5.98%',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF62EB56),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
              ],
            )
          ],
        ),
        SizedBox(width: 100),
        Icon(Icons.favorite_border, color: Color(0xFFFFC371), size: 25),
        SizedBox(width: 10),
        Icon(Icons.share, color: Color(0xFFFFC371), size: 25),
      ],
    );
  }
}
