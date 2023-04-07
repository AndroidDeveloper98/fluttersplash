import 'package:flutter/material.dart';
import 'package:flutterui/ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

