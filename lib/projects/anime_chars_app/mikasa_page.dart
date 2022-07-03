import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui_items.dart';

class MikasaPage extends StatelessWidget {
  const MikasaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaddingForAll(
      widget: Column(
        children: [
          MikasaPic(),
          CardWithErehText(),
        ],
      ),
    );
  }

  CardGenerator CardWithErehText() {
    return CardGenerator(
      sizedBox: SizedBoxWithTitle(
        height: 100,
        width: 200,
        textWriteWidget: const TextGenerator(
          text: 'ereeh',
        ),
      ),
      RadiusValue: 20,
      verticalMargin: 8,
    );
  }

  PictureBox MikasaPic() {
    return PictureBox(
      pic: Image.asset("assets/mikasa.jpg"),
    );
  }
}
