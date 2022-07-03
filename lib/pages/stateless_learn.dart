import 'dart:ui';

import 'package:flutter/material.dart';

import '../core/ui_items.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              PictureBox(
                pic: Image.asset("assets/mikasa.jpg"),
              ),
              const CardGenerator(
                verticalMargin: 25,
                widthValue: 200,
                heightValue: 100,
                sizedBox: SizedBoxWithTitle(
                  height: 100,
                  width: 200,
                  textWrite: TextGenerator(text: 'tatakae'),
                ),
                RadiusValue: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
