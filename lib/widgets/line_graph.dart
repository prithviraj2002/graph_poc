import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

//Line Graph built with fl_chart

class LineGraph extends StatelessWidget {
  const LineGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 0),
                FlSpot(1, 1),
                FlSpot(2, 2),
                FlSpot(3, 3),
                FlSpot(4, 4),
              ],
              color: Colors.blue,
              isCurved: false,
            ),
          ],
          borderData: FlBorderData(
              border: const Border(bottom: BorderSide(), left: BorderSide())),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
          bottomTitles: AxisTitles(sideTitles: _bottomTitles),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
        ),
      )
    );
  }
}

SideTitles get _bottomTitles => SideTitles(
  showTitles: true,
  getTitlesWidget: (value, meta) {
    String text = '';
    switch (value.toInt()) {
      case 1:
        text = '1';
        break;
      case 3:
        text = '3';
        break;
      case 5:
        text = '5';
        break;
      case 7:
        text = '7';
        break;
      case 9:
        text = '9';
        break;
      case 11:
        text = '11';
        break;
    }
    return Text(text);
  },
);


// LineChart(
// LineChartData(
// maxX: 11,
// maxY: 11,
// minX: 0,
// minY: 0,
// gridData: FlGridData(
// show: true,
// drawVerticalLine: true,
// drawHorizontalLine: true,
// ),
// lineBarsData: [
// LineChartBarData(
// spots: const [
// FlSpot(0.7, 5),
// FlSpot(1.5, 4),
// FlSpot(2, 3),
// FlSpot(3, 2),
// FlSpot(4.8, 1),
// FlSpot(5, 5),
// FlSpot(6.4, 5.4),
// ],
// isCurved: true
// )
// ]
// ),
// );