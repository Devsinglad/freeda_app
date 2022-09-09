import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
              interval: 1,
              reservedSize: 22,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                String text = '';
                switch (value.toInt()) {
                  case 1:
                    text = 'Jan';
                    break;
                  case 3:
                    text = 'Mar';
                    break;
                  case 5:
                    text = 'May';
                    break;
                  case 7:
                    text = 'Jul';
                    break;
                  case 9:
                    text = 'Sep';
                    break;
                  case 11:
                    text = 'Nov';
                    break;
                }

                return Text(text);
              }),
        ),
      );
}
