import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/presentation/models/question_model.dart';
import 'package:flutter_app/presentation/widgets/question_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  final questions = sample_data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    // Todo: make the text update to the current question
                    'Question ${index + 1}/4',
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: index < 1
                        ? null
                        : () {
                          setState(() {
                              index = index - 1;
                          });
                            // Todo: use setState to decrement the index value
                          },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                  Text(
                    // Todo: make the text update to the current question
                    '${index + 1}/4',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: index == questions.length - 1
                        ? null
                        : () {
                            // Todo: use setState to increment the index value
                            setState(() {
                              index = index + 1;
                              });
                          },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 2),
              const SizedBox(height: 10),
              QuestionCard(
                question: questions[index],
                index: index,
                questionLength: questions.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}