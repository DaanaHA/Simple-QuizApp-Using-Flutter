import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/models/question_with_answer.dart';


// class CongratsWidgets extends StatelessWidget {
//   final int score;
//   final VoidCallback onTap;
//   const CongratsWidgets({super.key, required this.score, required this.onTap,});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
      
//       children: [
//         const Text(
//           'Congratulations you comleated the quiz!',
//           style: TextStyle(   
//             fontStyle: FontStyle.italic,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const SizedBox(height: 15),
//         Text(
//           'Your score: $score/${questionsWithAnswers.length}',
//           style: const TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const SizedBox(height: 10),
//         TextButton(
//           onPressed: onTap,
//           child: const Text('Reset Quiz'),
//         ),
//       ],
//     );
//   }
// }

// //////////////////////


class CongratsWidgets extends StatefulWidget {
  final int score;
  final VoidCallback onTap;

  const CongratsWidgets({
    super.key,
    required this.score,
    required this.onTap,
  });

  @override
  State<CongratsWidgets> createState() => _CongratsWidgetsState();
}

class _CongratsWidgetsState extends State<CongratsWidgets> {
  bool showAnswers = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 270,
          decoration: BoxDecoration(
            color: AppColors.grey.withOpacity(0.11),
            border: Border.all(
              color: AppColors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(3, 30, 3, 5),
                child: Text(
                  "CONGRATS! \n You've End The Quiz",
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 18, 107),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily:AutofillHints.countryName 
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Your Score: ${widget.score}/${questionsWithAnswers.length}',
                style: const TextStyle(
                  color: AppColors.purble,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 70),
              TextButton(
                style: const ButtonStyle(
                 // backgroundColor: MaterialStateProperty.all(AppColors.purble.withOpacity(0.2)),
                ),
                onPressed: widget.onTap,
                child: const Text(
                        'Retry',
                  style: TextStyle(
                    height: 3,
                    color: Color.fromARGB(255, 88, 15, 104),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 23),
        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       showAnswers = !showAnswers;
        //     });
        //   },
        //   child: const Text(" DONE "),
        // ),
        // Visibility(
        //   visible: showAnswers,
        //   child: Column(
        //       children: questionsWithAnswers.map((question) {
        //     return Column(
        //       children: [
        //         Text(
        //           question.question,
        //           style: const TextStyle(fontSize: 16, color: Colors.black87),
        //         ),
        //         Text("correct answer: ${question.correctAnswer}"),
        //         const Divider(color: Colors.black12),
        //       ],
        //     );
        //   }).toList()),
        // ),
      ],
    );
  }
}

