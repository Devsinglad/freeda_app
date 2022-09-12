import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/constants.dart';

List<BarChartGroupData>barChartGroupData = [
  BarChartGroupData(x: 1,barRods: [BarChartRodData(toY: 40,width: 8,
      color: t2Color)],),
  BarChartGroupData(x: 2,barRods: [BarChartRodData(toY: 110,width: 8,
      color: kPrimaryColor)],),
  BarChartGroupData(x: 3,barRods: [BarChartRodData(toY: 60,width: 8,
      color: t2Color)],),
  BarChartGroupData(x: 4,barRods: [BarChartRodData(toY: 120,width: 8,
      color: kPrimaryColor)],),
  BarChartGroupData(x: 7,barRods: [BarChartRodData(toY: 50,width: 8,
      color: t2Color)],),
  BarChartGroupData(x: 8,barRods: [BarChartRodData(toY: 80,width: 8,
      color: kPrimaryColor)],),
];

Widget bottomTitles(double value, TitleMeta meta){
  const style = TextStyle(color: Color(0xff7F8192), fontWeight: FontWeight.w500,
      fontSize: 10);
  String text = '';
  switch (value.toInt()){
    case 1:
      text = 'JAN';
      break;
    case 2:
      text = 'FEB';
      break;
    case 3:
      text = 'MAR';
      break;
    case 4:
      text = 'APR';
      break;
    case 7:
      text = 'MAY';
      break;

    case 8:
      text = 'JUN';
      break;
  }
  return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text,style: style,));
}
class BarChartGraph extends StatelessWidget {
  const BarChartGraph({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BarChart(
        BarChartData(
          // alignment: BarChartAlignment.center,
          barTouchData: BarTouchData(
              enabled: true
          ),
          maxY: 130,
          titlesData: FlTitlesData(
            show: true,
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: bottomTitles,
              ),
            ),
          ),
          gridData: FlGridData(
              show: false
          ),
          borderData: FlBorderData(
              border: Border(
                  top: BorderSide.none,
                  left: BorderSide.none,
                  right: BorderSide.none
              )
          ),
          backgroundColor: Color(0xffF5F6FA),
          barGroups: barChartGroupData,
        ));
  }
}