import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yaro/Components/Graph.dart';
import 'package:yaro/constants.dart';

class TimeLineRow extends StatelessWidget {
  const TimeLineRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('NSE',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: style2.copyWith(color: Color(0xFFFFC371))),
              Container(
                padding: EdgeInsets.all(5),
                height: 0.07 * width,
                width: 0.141 * width,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC371),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text('1D',
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      style: style2.copyWith(color: Colors.black)),
                ),
              ),
              Text('1W',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: style2),
              Text('1M',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: style2),
              Text('1Y',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: style2),
              Text('3Y',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: style2),
            ],
          ),
          Graph()
        ],
      ),
    );
  }
}
