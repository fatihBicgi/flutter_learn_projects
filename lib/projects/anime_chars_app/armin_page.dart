import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui_items.dart';
import 'package:flutter_application_1/learn/random_image_page.dart';

class ArminPage extends StatelessWidget {
  const ArminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaddingForAll(
      widget: Column(
        children: [
          PictureBox(
            pic: Image.asset("assets/armin.png"),
          ),
          CardGenerator(
              sizedBox: SizedBoxWithTitle(
                height: 100,
                width: 200,
                textWriteWidget: TextGenerator(text: 'Sea'),
              ),
              verticalMargin: 10,
              RadiusValue: 20)
        ],
      ),
    );
  }
}
