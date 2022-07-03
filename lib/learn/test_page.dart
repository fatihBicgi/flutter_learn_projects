import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

class ColumnCard extends StatelessWidget {
  const ColumnCard({Key? key, required this.distance}) : super(key: key);
  final double distance;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: distance),
      child: Center(
        child: SizedBox(
          height: 100,
          width: 100,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
