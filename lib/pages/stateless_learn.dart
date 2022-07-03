import 'dart:ui';

import 'package:flutter/material.dart';

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
              const _CardGenerator(
                verticalMargin: 25,
                widthValue: 200,
                heightValue: 100,
                sizedBox: SizedBoxWithTitle(
                  height: 100,
                  width: 200,
                  textWrite: TextGenerator(text: 'tatakae'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PictureBox extends StatelessWidget {
  const PictureBox({
    Key? key,
    required this.pic,
  }) : super(key: key);
  final Image pic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: pic,
    );
  }
}

class SizedBoxWithTitle extends StatelessWidget {
  const SizedBoxWithTitle({
    Key? key,
    required this.height,
    required this.width,
    required this.textWrite,
  }) : super(key: key);
  final double width, height;
  final Widget textWrite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: textWrite,
    );
  }
}

class TextGenerator extends StatelessWidget {
  const TextGenerator({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

class _CardGenerator extends StatelessWidget {
  const _CardGenerator(
      {Key? key,
      required this.sizedBox,
      required this.verticalMargin,
      required this.heightValue,
      required this.widthValue})
      : super(key: key);
  final double verticalMargin, widthValue, heightValue;
  final Widget sizedBox;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      child: sizedBox,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
