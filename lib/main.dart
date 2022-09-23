import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui_items.dart';
import 'package:flutter_application_1/projects/anime_chars_app/eren_page.dart';
import 'package:flutter_application_1/projects/random_color_generator/random_color_page.dart';
import 'learn/random_image_page.dart';
import 'learn/stateless_learn.dart';
import 'learn/test_page.dart';
import 'projects/anime_chars_app/home_page.dart';

import 'projects/anime_chars_app/mikasa_page.dart';

//>flutter launch emulator

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(),
      home: TestPage(),
    );
  }
}
