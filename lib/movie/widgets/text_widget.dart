import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {super.key,
      required this.data,
      required this.isBold,
      required this.size,
      required this.textColor});

  late String data;
  late double size;
  bool isBold = false;
  late Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: isBold ? FontWeight.normal : FontWeight.bold,
      ),
    );
  }
}
