import 'package:flutter/material.dart';

import '../widgets/charts_flutter.dart';

class HomePage extends StatefulWidget {
  static const String id ='/StackedBarLineExample';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: OrdinalComboBarLineChart.withSampleData()),
        ),
      );
  }
}