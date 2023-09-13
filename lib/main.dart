import 'package:flutter/material.dart';
import 'package:flutterr/screen/home_screen.dart';

void main() {
  // Flutter 프래임워크가
  // 앱을 실행할 준비가 될때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}


