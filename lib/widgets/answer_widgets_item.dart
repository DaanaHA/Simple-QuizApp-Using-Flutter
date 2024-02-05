import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/question_with_answer.dart';
import 'package:flutter_application_1/utils/app_colors.dart';

// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_application_1/pages/home_page.dart';

class AnswerWidgetItem extends StatelessWidget {
  final Answer answer;
  final String? selectedAnswer;
  final String? correctAnswer;
  final VoidCallback onTap;
//need to add correctAnswer parameter
  const AnswerWidgetItem({
    super.key,
    required this.answer,
    this.selectedAnswer,
    required this.onTap, 
    this.correctAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: selectedAnswer == answer.text
                ? AppColors.purble.withOpacity(0.6)
                : AppColors.white,
            border: Border.all(
              width: 1,
              color: AppColors.purble.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                //selectedAnswer == answer? Icon(Icon.arrow_right_sharp : Icons.arrow_drop_down_sharp);
                //const Icon(selectedAnswer == answer? Icon.arrow_right_sharp :Icons.arrow_drop_down_sharp),
                Icon(
                  Icons.arrow_right_rounded,
                  size: 40,
                  color: selectedAnswer == answer.text
                      ? AppColors.white
                      : AppColors.purble,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  answer.text,
                  style: TextStyle(
                    color: selectedAnswer == answer.text
                        ? AppColors.white
                        : AppColors.purble,
                    fontWeight: selectedAnswer == answer.text
                        ? FontWeight.w800
                        : FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}