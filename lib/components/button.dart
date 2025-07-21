import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;

  const Button({super.key, 
  required this.text,
  required this.onPressed,
  required this.color
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 400,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(text)),
    );
  }
}