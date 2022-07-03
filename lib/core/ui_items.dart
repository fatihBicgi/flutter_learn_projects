import 'package:flutter/material.dart';

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
  SizedBoxWithTitle({
    Key? key,
    required this.height,
    required this.width,
    required this.textWriteWidget,
  }) : super(key: key);
  final double width, height;
  final Widget textWriteWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: textWriteWidget,
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

class CardGenerator extends StatelessWidget {
  const CardGenerator({
    Key? key,
    required this.sizedBox,
    required this.verticalMargin,
    required this.RadiusValue,
  }) : super(key: key);
  final double verticalMargin;
  final Widget sizedBox;
  final double RadiusValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      child: sizedBox,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusValue)),
    );
  }
}

class PaddingForAll extends StatelessWidget {
  const PaddingForAll({Key? key, this.widget}) : super(key: key);
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: widget,
    );
  }
}
