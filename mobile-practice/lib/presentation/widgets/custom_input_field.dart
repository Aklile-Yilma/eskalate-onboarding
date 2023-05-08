import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  CustomInputField({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: 'Full Name',
        hintStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}