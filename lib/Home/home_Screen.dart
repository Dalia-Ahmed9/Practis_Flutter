import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          " Welcom to The Home Screen",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
