import 'package:flutter/material.dart';
import 'package:flutterr/screen/home_screen.dart';

void main() {
  // Flutter 프래임워크가
  // 앱을 실행할 준비가 될때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontFamily: 'DoHyeon',
            fontSize: 80.0,
          ),
          headline2: TextStyle(
              color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w700),
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyText2: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
