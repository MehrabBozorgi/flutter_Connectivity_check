import 'package:flutter/material.dart';

import 'SecondScreen.dart';


void main() async{

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      SecondScreen(),

    );
  }
}
