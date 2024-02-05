import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/question_with_answer.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/widgets/answer_screen.dart';
import 'package:flutter_application_1/widgets/answer_widgets_item.dart';
import 'package:flutter_application_1/widgets/congrats_widgets.dart';
import 'package:flutter_application_1/widgets/main_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//need to know how to return at the next quistion

class _MyHomePageState extends State<MyHomePage> {
  bool isFinished = false;
  int questionIndex = 0;
  int score = 0;
  String? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: !isFinished
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  questionsWithAnswers[questionIndex].question,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Answer and get points!',
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.grey,
                  ),
                ),
                const SizedBox(height: 36),
                Column(
                  children: questionsWithAnswers[questionIndex]
                      .answers
                      .map((answer) => AnswerWidgetItem(
                    answer: answer,
                    selectedAnswer: selectedAnswer,
                    correctAnswer: questionsWithAnswers[questionIndex].correctAnswer,
                    onTap: () {
                      setState(() {
                        selectedAnswer = answer.text;
                      });
                    },
                  ))
                      .toList(),
                ),
                const Spacer(),
                MainButton(
                  text: 'Next',
                  onTap: () {
                    setState(() {
                      //Check the selected answer and navigate to the next screen

                       bool isCorrect =false  ;
                  
                      final questionObj =
                      questionsWithAnswers[questionIndex];
                       selectedAnswer == questionObj.correctAnswer ? isCorrect= true : false;
                      if (selectedAnswer == questionObj.correctAnswer) {
                        score++;
                      }
                      if (questionIndex <
                          questionsWithAnswers.length - 1) {
                        questionIndex++;
                        selectedAnswer = null; // Reset selected answer
                      } else {
                        isFinished = true;
                      }
                      Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnswerScreen(
                    isCorrect: isCorrect,
                  ),
                      ));

                    });
                  },
                ),
              ],
            )
                : Column(
              children: [
                CongratsWidgets(
                  score: score,
                  onTap: () {
                    setState(() {
                      questionIndex = 0;
                      isFinished = false;
                      score = 0;
                    });
                  },
                ),
                const AboutDialog(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}