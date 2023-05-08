import 'package:flutter/material.dart';
import '../../constants.dart';
import '../widgets/starter_quiz_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Todo: Replace the container to match the UI for the welcome_screen
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
      ),
      child: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [       
            Text("Let's Play Quiz"),
            StartQuizButton()
          ],
      ),
      ), 
    );
  }
}