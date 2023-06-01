import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graph_poc/widgets/graph.dart';
import 'package:graph_poc/widgets/line_graph.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return LineGraph();
  }
}
