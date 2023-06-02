import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graph_poc/widgets/bar_graph.dart';
import 'package:graph_poc/widgets/graph.dart';
import 'package:graph_poc/widgets/line_graph.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
//Use Stack widget to impose 2 charts on top of each other

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          LineGraph(),
          BarChartWidget()
        ],
      ),
    );
  }
}
