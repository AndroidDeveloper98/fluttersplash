import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome In Flutter",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}