import 'package:flutter/material.dart';
import 'package:flutter_application_1/projects/anime_chars_app/eren_page.dart';
import 'package:flutter_application_1/projects/anime_chars_app/mikasa_page.dart';
import 'armin_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ArminPage(),
        ErenPage(),
        MikasaPage(),
      ],
    );
  }
}
