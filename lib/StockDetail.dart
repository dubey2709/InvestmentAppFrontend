import 'package:flutter/material.dart';
import 'Components/BasicDetails.dart';
import 'Components/BottomDetails.dart';
import 'Components/TimeLineRow.dart';

class StockDetail extends StatelessWidget {
  const StockDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF000000),
          centerTitle: true,
          title: Text(
            'Stock Detail',
            textAlign: TextAlign.center,
            textScaleFactor: 1,
            style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BasicDetails(),
                  SizedBox(height: 0.015 * height),
                  TimeLineRow(),
                  SizedBox(height: 0.020 * height),
                  BottomDetails(height: height),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xFFB62828),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10))),
                  child: Center(
                      child: Text(
                    'Sell',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                  )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xFF1ECB98),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10))),
                  child: Center(
                      child: Text(
                    'Buy',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
