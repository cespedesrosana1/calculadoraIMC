import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.press,
    required this.backgroundColor,
    required this.textButton,
  }) : super(
          key: key,
        );
  final VoidCallback press;
  final Color backgroundColor;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(textButton),
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: const TextStyle(
            color: Colors.white10,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
