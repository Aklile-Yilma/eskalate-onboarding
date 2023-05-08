import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import "../screens/welcome_screen.dart";

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.totalScore, required this.actualScore});
  final int totalScore;
  final int actualScore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              // Todo: Add image widget
              Image(image: AssetImage("assets/images/a2sv.png")),
              // Todo: fetch the image from 
              const Text(
                'Score',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                // Todo: display the score
                '${actualScore}/${totalScore}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  // Todo: Navigate back to welcome screen
                  Navigator.of(context).popUntil((route)=> route.isFirst);
                  //  Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (BuildContext context) => const WelcomeScreen(),
                  //     ),
                  //   );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Try Again',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 3)
            ],
          ),
        ),
      ),
    );
  }
}