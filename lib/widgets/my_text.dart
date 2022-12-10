import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
     text,
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
