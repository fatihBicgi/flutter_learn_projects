import 'package:flutter/material.dart';
import 'package:flutter_application_1/projects/anime_chars_app/eren_page.dart';
import 'package:flutter_application_1/projects/anime_chars_app/mikasa_page.dart';
import 'armin_page.dart';

class AnimeHomePage extends StatefulWidget {
  AnimeHomePage({Key? key}) : super(key: key);

  @override
  State<AnimeHomePage> createState() => _AnimeHomePage();
}

class _AnimeHomePage extends State<AnimeHomePage> {
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
