import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineGraph extends StatelessWidget {
  const LineGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LineChart(
    LineChartData(
      maxX: 11,
      maxY: 11,
      minX: 0,
      minY: 0,
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: true,
      ),
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0.7, 5),
            FlSpot(1.5, 4),
            FlSpot(2, 3),
            FlSpot(3, 2),
            FlSpot(4.8, 1),
            FlSpot(5, 5),
            FlSpot(6.4, 5.4),
          ],
          isCurved: true
        )
      ]
    ),
  );
}
