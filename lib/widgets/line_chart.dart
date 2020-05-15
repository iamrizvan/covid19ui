 import '../constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
 
 class LineReportChart extends StatelessWidget
  {
    @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2.2,
    child: LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(show: false),
        lineBarsData: [
           LineChartBarData(
         spots: getSports(),
         isCurved: true,
         dotData:  FlDotData(show: false),
         belowBarData: BarAreaData(show: false),
         colors: [kPrimaryColor],
         barWidth: 4
       )
        ]
      )
    ),);
  }

List<FlSpot> getSports()
{
  return [
    FlSpot(0, 0.5),
    FlSpot(1, 1.5),
    FlSpot(2, 1.75),
    FlSpot(3, 1.1),
    FlSpot(4, 1.8),
    FlSpot(5, 0.9),
    FlSpot(6, 2.1),
    FlSpot(7, 2.2),
    FlSpot(8, 1.6),
    FlSpot(9, 2.1),
    FlSpot(10, 2.1),
    FlSpot(11, 1.9),
    FlSpot(12, 2.5),
  ];
}

  }
