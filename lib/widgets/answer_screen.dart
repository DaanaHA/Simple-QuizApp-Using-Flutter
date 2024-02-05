import 'package:flutter/material.dart';
// import 'package:flutter_application_1/utils/app_colors.dart';
// import 'package:flutter_application_1/models/question_with_answer.dart';

class AnswerScreen extends StatefulWidget {
  final bool isCorrect;

 const AnswerScreen({super.key, required this.isCorrect});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Answer'),
      ),
      body: Center(
        child: Text(
          widget.isCorrect ? 'Correct!' : 'Wrong!',
          style: TextStyle(
            color: widget.isCorrect ? Colors.green : Colors.red,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
