import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui_items.dart';
import 'package:flutter_application_1/learn/random_image_page.dart';

class RandomColorHomePage extends StatefulWidget {
  RandomColorHomePage({Key? key}) : super(key: key);

  @override
  State<RandomColorHomePage> createState() => _RandomColorHomePage();
}

class _RandomColorHomePage extends State<RandomColorHomePage> {
  int Count = 0;
  void Stater() {
    Count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextGenerator(text: 'Random Color'),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              Stater();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: RandomColorContainer(),
              ),
            ),
            Expanded(
              child: TextGenerator(
                text: Count.toString(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RandomColorContainer extends StatelessWidget {
  const RandomColorContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Util.randomColor(),
        ),
      ),
    );
  }
}

class Util {
  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }
}
