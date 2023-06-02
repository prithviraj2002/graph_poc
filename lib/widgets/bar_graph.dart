import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

//Create Bar Graph using fl_chart

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      decoration: BoxDecoration(
        border: Border.all()
      ),
      child: BarChart(
        BarChartData(
          maxY: 6,
          minY: 0,
          barGroups: [
            BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                      toY: 0
                  )
                ]
            ),
            BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                      toY: 1
                  )
                ]
            ),
            BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                      toY: 2
                  )
                ]
            ),
            BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                      toY: 3
                  )
                ]
            ),
          ],
          borderData: FlBorderData(
              border: const Border(bottom: BorderSide(), left: BorderSide())),
          gridData: FlGridData(show: false),
          // titlesData: FlTitlesData(
          //   bottomTitles: AxisTitles(sideTitles: _bottomTitles),
          //   leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          //   topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          //   rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          // ),
        ),
      ),
    );
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
  );}