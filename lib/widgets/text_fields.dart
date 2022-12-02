import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields(
      {Key? key, required this.labelText, required this.prefixIcon})
      : super(key: key);
  final labelText, prefixIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          labelText: labelText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
