// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'package:flutter/material.dart';

class QuestionWithAnswer {
  final String question;
  final List<Answer> answers;
  final String correctAnswer;

  QuestionWithAnswer({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}

class Answer {
  final String text;
 

  Answer({
    required this.text,
   
  });
}

List<QuestionWithAnswer> questionsWithAnswers = [
  QuestionWithAnswer(
    question: 'What\'s your favorite time of Study?',
    answers: [
      Answer(
        text: 'colleg corses ',
       
      ),
      Answer(
        text: 'flutter cource with Eng.Tarek',
      
      ),
      Answer(
        text: 'Linkedin information',
      ),
     
    ],
    correctAnswer:'flutter cource with Eng.Tarek',

  ),
  QuestionWithAnswer(
    question: 'is Dart programming language?',
    answers: [
      Answer(
        text: 'true',
        
      ),
      Answer(
        text: 'false',
       
      ),
      
    ],
    correctAnswer: 'true',
  ),
  QuestionWithAnswer(
    question: 'what the type of Flutter platform?',
    answers: [
      Answer(
        text: 'Android',
      ),
      Answer(
        text: 'Cross platform',
      ),
      Answer(
        text: 'Internet of Things Platform',
      
      ),
      
    ],
    correctAnswer: 'Cross platform',
  ),
  QuestionWithAnswer(
    question: 'What\'s your favorite food?',
    answers: [
      Answer(
        text: 'maqloba',
      ),
      Answer(
        text: 'Pizza',
      ),
      Answer(
        text: 'Pasta',
      ),
      Answer(
        text: 'Burger',
      ),
    ],
    correctAnswer: 'maqloba',
  ),
];