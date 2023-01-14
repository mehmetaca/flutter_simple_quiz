import 'package:flutter_simple_quiz/models/question.dart';
import 'package:flutter_simple_quiz/models/question_choice.dart';

class QuestionManager
{
  List<Question> listQuestion = [
    Question(
        questionText: 'United States of America',
        listQuestionChoise: [
          QuestionChoice(choiceText: 'Washington', isCorrect: true),
          QuestionChoice(choiceText: 'Chiago', isCorrect: false),
          QuestionChoice(choiceText: 'New York', isCorrect: false),
          QuestionChoice(choiceText: 'Seatle', isCorrect: false),
        ],
    ),
    Question(
      questionText: 'Taiwan',
      listQuestionChoise: [
        QuestionChoice(choiceText: 'Kauhsiung', isCorrect: false),
        QuestionChoice(choiceText: 'Tainan', isCorrect: false),
        QuestionChoice(choiceText: 'Taichung', isCorrect: false),
        QuestionChoice(choiceText: 'Taipei', isCorrect: true),
      ],
    ),
    Question(
      questionText: 'Venezuela',
      listQuestionChoise: [
        QuestionChoice(choiceText: 'Caracas', isCorrect: true),
        QuestionChoice(choiceText: 'Maracaibo', isCorrect: false),
        QuestionChoice(choiceText: 'Maracay', isCorrect: false),
        QuestionChoice(choiceText: 'Valencia', isCorrect: false),
      ],
    ),
    Question(
      questionText: 'Türkiye',
      listQuestionChoise: [
        QuestionChoice(choiceText: 'Ankara', isCorrect: true),
        QuestionChoice(choiceText: 'Bursa', isCorrect: false),
        QuestionChoice(choiceText: 'Istanbul', isCorrect: false),
        QuestionChoice(choiceText: 'Izmir', isCorrect: false),
      ],
    ),
    Question(
      questionText: 'Georgia',
      listQuestionChoise: [
        QuestionChoice(choiceText: 'Kutaisi', isCorrect: false),
        QuestionChoice(choiceText: 'Sukhumi', isCorrect: false),
        QuestionChoice(choiceText: 'Tbilisi', isCorrect: true),
        QuestionChoice(choiceText: 'Batumi', isCorrect: false),
      ],
    ),
    Question(
      questionText: 'India',
      listQuestionChoise: [
        QuestionChoice(choiceText: 'Mumbai', isCorrect: false),
        QuestionChoice(choiceText: 'New Delhi', isCorrect: true),
        QuestionChoice(choiceText: 'Kolkata', isCorrect: false),
        QuestionChoice(choiceText: 'Hyderabad', isCorrect: false),
      ],
    ),
  ];








}