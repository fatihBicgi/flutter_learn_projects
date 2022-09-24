import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui_items.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextGenerator(text: 'Merhaba Dünya'),
          ],
        ),
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
