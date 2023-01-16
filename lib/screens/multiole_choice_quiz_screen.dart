import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz/widgets//question_view.dart';
import 'package:flutter_simple_quiz/widgets//quiz_result_view.dart';
import 'package:flutter_simple_quiz/models/question.dart';
import 'package:flutter_simple_quiz/models/question_manager.dart';

class MultipleChoiceQuizScreen extends StatefulWidget {
  const MultipleChoiceQuizScreen({Key? key}) : super(key: key);

  @override
  State<MultipleChoiceQuizScreen> createState() =>
      _MultipleChoiceQuizScreenState();
}

class _MultipleChoiceQuizScreenState extends State<MultipleChoiceQuizScreen> {
  int currentQuestionIndex = 0;
  int correctAnswerCount = 0;
  int inCorrectAnswerCount = 0;
  final List<Question> listQuestion = QuestionManager().listQuestion;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onChoiceSelected(int choiceIndex) {
    bool isCorrect = listQuestion
        .elementAt(currentQuestionIndex)
        .listQuestionChoise
        .elementAt(choiceIndex)
        .isCorrect;

    setState(() {
      if (isCorrect) {
        correctAnswerCount = correctAnswerCount + 1;
      } else {
        inCorrectAnswerCount = inCorrectAnswerCount + 1;
      }

      if (currentQuestionIndex < listQuestion.length) {
        currentQuestionIndex = currentQuestionIndex + 1;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      correctAnswerCount = 0;
      inCorrectAnswerCount = 0;
      currentQuestionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: currentQuestionIndex < listQuestion.length
          ? Container(
              color: Colors.black,
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 50.0, right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Q.${currentQuestionIndex + 1} / ${listQuestion.length}',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      QuestionView(
                        question: listQuestion.elementAt(currentQuestionIndex),
                        onChoiceSelected: onChoiceSelected,
                      )
                    ],
                  )),
            )
          : QuizResultView(
              resetCallBack: resetQuiz,
              correctAnswerCount: correctAnswerCount,
              inCorrectAnswerCount: inCorrectAnswerCount,
            ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
