import 'package:flutter_simple_quiz/models/question_choice.dart';

class Question {
  String questionText;
  List<QuestionChoice> listQuestionChoise;

  Question({
    required this.questionText,
    required this.listQuestionChoise
  });
}
