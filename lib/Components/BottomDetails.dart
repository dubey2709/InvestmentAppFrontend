import 'package:flutter/material.dart';

class BottomDetails extends StatelessWidget {
  const BottomDetails({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Performance',
            textAlign: TextAlign.center,
            textScaleFactor: 1,
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ),
        SizedBox(height: 0.020 * height),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Low\n480.00",
                textScaleFactor: 1,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
              Text(
                "Today's High\n1490.87",
                textScaleFactor: 1,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
        SizedBox(height: 0.010 * height),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              trackShape: RectangularSliderTrackShape(),
              activeTrackColor: Color(0xFF1ECB98),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.00),
              thumbColor: Color(0xFFFFC371),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 10.00)),
          child: Slider(
              min: 0,
              max: 100,
              inactiveColor: Color(0xFF1ECB98),
              value: 32,
              onChanged: (value) {}),
        ),
        SizedBox(height: 0.020 * height),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "10 Week High\n1560.87",
                textScaleFactor: 1,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
        SizedBox(height: 0.010 * height),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              trackShape: RectangularSliderTrackShape(),
              activeTrackColor: Color(0xFF1ECB98),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.00),
              thumbColor: Color(0xFFFFC371),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 10.00)),
          child: Slider(
              min: 0,
              max: 100,
              inactiveColor: Color(0xFF1ECB98),
              value: 47,
              onChanged: (value) {}),
        ),
        SizedBox(height: 0.040 * height),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Open\n480.00',
                textAlign: TextAlign.left,
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
              Text(
                'Prev.Close\n1660.00',
                textAlign: TextAlign.left,
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
              Text(
                'Volume\n18,56,700',
                textAlign: TextAlign.left,
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              )
            ],
          ),
        ),
        SizedBox(height: 0.040 * height),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Fundamental',
            textAlign: TextAlign.left,
            textScaleFactor: 1,
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        )
      ],
    );
  }
}
