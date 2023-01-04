import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  List<Color> gradientColors = [
    Color(0xFF1CCC98),
    Colors.teal,
    Colors.white,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return Stack(
      children: <Widget>[
        Container(
          width: 800,
          height: 0.33 * height,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              border: Border.all(color: Colors.transparent),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                right: 0,
                left: 12,
                top: 24,
                bottom: 12,
              ),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        fontFamily: 'Poppins');
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('10 Am', style: style);
        break;
      case 7:
        text = const Text('12 Pm', style: style);
        break;
      case 13:
        text = const Text('02 Pm', style: style);
        break;
      case 19:
        text = const Text('04 Pm', style: style);
        break;
      case 25:
        text = const Text('06 Pm', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget rightTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 12,
        fontFamily: 'Poppins');
    String text;
    switch (value.toInt()) {
      case 1:
        text = '100';
        break;
      case 2:
        text = '200';
        break;
      case 4:
        text = '400';
        break;
      case 8:
        text = '800';
        break;
      case 10:
        text = '1000';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.right);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 0,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: rightTitleWidgets,
            reservedSize: 50,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: Colors.transparent),
      ),
      minX: 0,
      maxX: 25,
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 2),
            FlSpot(2, 3),
            FlSpot(4, 5.5),
            FlSpot(6, 4.5),
            FlSpot(8, 6),
            FlSpot(10, 7),
            FlSpot(12, 5.7),
            FlSpot(14, 7.5),
            FlSpot(16, 6),
            FlSpot(18, 6.5),
            FlSpot(20, 7),
          ],
          isCurved: true,
          curveSmoothness: 0.4,
          color: Colors.teal,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
