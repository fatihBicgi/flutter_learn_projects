import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/random_image_page.dart';
import 'package:flutter_application_1/pages/stateless_learn.dart';
import 'package:flutter_application_1/pages/test_page.dart';

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
      home: const StatelessLearn(),
    );
  }
}
