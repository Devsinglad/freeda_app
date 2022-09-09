import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff5771F9).withOpacity(1),
    const Color(0xff5771F9).withOpacity(0.12),
  ];
  LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 120,
      titlesData: LineTitles.getTitleData(),
      gridData: FlGridData(
        show: false,
        getDrawingHorizontalLine: (_) {
          return FlLine(color: const Color(0xff5771F9), strokeWidth: 5);
        },
        drawVerticalLine: true,
      ),
      borderData: FlBorderData(
          show: true,
          border: Border(
            bottom: BorderSide.none,
          )),
      lineBarsData: [
        LineChartBarData(
          color: const Color(0xff5771F9),
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors,
            ),
          ),
          spots: [
            FlSpot(0, 5),
            FlSpot(1, 10.0),
            FlSpot(2, 50.0),
            FlSpot(3, 30.0),
            FlSpot(4, 40.0),
            FlSpot(5, 50.0),
            FlSpot(6, 120.0),
            FlSpot(7, 70.0),
            FlSpot(8, 80.0),
            FlSpot(9, 30.0),
            FlSpot(10, 80.0),
            FlSpot(11, 50.0),
          ],
        ),
      ],
    ));
  }
}
