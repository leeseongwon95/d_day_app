import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'sunflower',
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.lightGreen,
          fontFamily: 'parisienne',
          fontSize: 80,
        ),
        headline2: TextStyle(
          fontSize: 30,
        ),
        bodyText1: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 60,
        ),
      ),
    ),
    home: HomeScreen(),
  ));
}
