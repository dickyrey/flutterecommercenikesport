import 'package:flutter/material.dart';
import 'package:fluttershop/src/tools/custom_color.dart';
import 'package:fluttershop/src/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter NIKE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Avant",
        primaryColor: Color(color1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
