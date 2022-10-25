import 'package:first_lesson/screens/page_Fife.dart';
import 'package:first_lesson/screens/page_Four.dart';
import 'package:first_lesson/screens/page_One.dart';
import 'package:first_lesson/screens/page_Theree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:PageOne(),
    );
  }
}

