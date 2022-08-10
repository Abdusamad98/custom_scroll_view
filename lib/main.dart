import 'package:custom_scroll_view/screens/example_screen_four.dart';
import 'package:custom_scroll_view/screens/example_screen_one.dart';
import 'package:custom_scroll_view/screens/example_screen_three.dart';
import 'package:custom_scroll_view/screens/example_screen_two.dart';
import 'package:custom_scroll_view/screens/my_home_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleScreenFour(),
    );
  }
}
