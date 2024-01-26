import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/question_with_answer.dart';


class CongratsWidgets extends StatelessWidget {
  final int score;
  final VoidCallback onTap;
  const CongratsWidgets({super.key, required this.score, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        const Text(
          'Congratulations you comleated the quiz!',
          style: TextStyle(   
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Your score: $score/${questionsWithAnswers.length}',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: onTap,
          child: const Text('Reset Quiz'),
        ),
      ],
    );
  }
}