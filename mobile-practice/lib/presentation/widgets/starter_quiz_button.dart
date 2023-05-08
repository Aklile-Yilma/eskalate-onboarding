import 'package:flutter/material.dart';
import "../screens/quiz_screen.dart";


class StartQuizButton extends StatelessWidget {
  const StartQuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        decoration: BoxDecoration(
          color: const Color(0xFF3EAAAD),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'Lets start quiz'.toUpperCase(),
            style: const TextStyle(
              color: Color(0xFF2D334C),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}