import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    required this.inputController,
    required this.label,
  });
  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
        prefixIcon: const Icon(Icons.person),
        labelStyle: const TextStyle(
          color: Colors.black87,
        ),
      ),
    );
  }
}
