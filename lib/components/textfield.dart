import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text;
  final bool isSecured;
  final VoidCallback? onTap; 
  final TextEditingController controller;

  const InputField({
    super.key,
    required this.text,
    required this.isSecured,
    this.onTap,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isSecured,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter $text',
          ),
          onTap: onTap,
        ),
      ],
    );
  }
}
