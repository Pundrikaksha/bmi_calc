import 'package:bmicalc/ResultPage.dart';
import 'package:flutter/material.dart';

import 'Input.dart';

void main() => runApp(Bmi());

class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
//      home: Input(),
      initialRoute: '/',
      routes: {
        '/f': (context) => ResultPage(),
        '/': (context) => Input(),
      },
    );
  }
}
