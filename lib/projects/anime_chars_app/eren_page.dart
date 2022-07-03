import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui_items.dart';

class ErenPage extends StatelessWidget {
  const ErenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaddingForAll(
      widget: Column(
        children: [
          ErenPic(),
          CardWithTatakaeText(),
        ],
      ),
    );
  }

  PictureBox ErenPic() => PictureBox(pic: Image.asset("assets/eren.png"));

  CardGenerator CardWithTatakaeText() {
    return CardGenerator(
        sizedBox: SizedBoxWithTitle(
          height: 100,
          width: 200,
          textWriteWidget: TextGenerator(text: 'tatakae'),
        ),
        verticalMargin: 8,
        RadiusValue: 20);
  }
}
