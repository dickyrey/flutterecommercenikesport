import 'package:flutter/material.dart';
import 'package:nike_store/src/tools/custom_color.dart';
import 'package:nike_store/src/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter NIKE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Avant",
        primaryColor: const Color(color1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}
