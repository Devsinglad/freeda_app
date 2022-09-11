import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widgets.dart';
import 'chart_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(padding:EdgeInsets.only(top: 58,right: 41),
            child: Column(
              children:[
                topRow(),
                Text(
                  'Total Balance',
                  style:customTextDecor
                  ,),
                Text(
                  '\$223,600',
                  style:customTextDecor.copyWith(fontSize: 52,fontWeight:
                  FontWeight.bold),
                 ),
                SizedBox(height: 38,),
                // Image.asset('assets/images/Graph.png'),
                Center(
                  child: SizedBox(width: 332,height: 350,
                      child: BarChartGraph()),
                ),
                SizedBox(height: 38,),
                customContainer(height: 73, width: 332,
                    customizedDecoration: customDecoration2.copyWith(
                      color: Color(0xff5771F9),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 48, top: 19,
                            bottom: 13.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Easy Payment',
                              style:customTextDecor.copyWith(fontSize: 18,
                                  fontWeight:
                              FontWeight.w500,color: Colors.white),
                            ),
                            Text(
                              'Check out new features',
                              style:customTextDecor.copyWith(fontSize: 14,
                                  fontWeight:
                              FontWeight.w500, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      customContainer(
                          height: 42.37, width: 44,
                          customMargin: EdgeInsets.only(right:10 ),
                          customizedDecoration: customDecoration.copyWith(
                            image: DecorationImage(image: AssetImage('assets/images/Invite friend arrow.png'))
                          )
                      )
                    ],
                  ),
                )
              ]
            ),
          )),
    );
  }
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
// Widget getTitles(double value, TitleMeta meta){
//   const style = TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
//   fontSize: 14);
// Widget text;
// switch (value.toInt()){
//   case 0:
//     text = const Text('JAN', style: style,);
//     break;
//   case 1:
//     text = const Text('JAN', style: style,);
//     break;
//   case 2:
//     text = const Text('JAN', style: style,);
//     break;
//   case 3:
//     text = const Text('JAN', style: style,);
//     break;
//   case 4:
//     text = const Text('JAN', style: style,);
//     break;
//   case 5:
//     text = const Text('JAN', style: style,);
//     break;
//   case 6:
//     text = const Text('JAN', style: style,);
//     break;
//   }
//   return SideTitleWidget(child: text, axisSide: meta.axisSide)
// }
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