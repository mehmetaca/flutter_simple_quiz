import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz/widgets//question_text_view.dart';
import 'package:flutter_simple_quiz/models/question.dart';

import 'choice_view.dart';

class QuestionView extends StatelessWidget {
  final Question question;
  final Function onChoiceSelected;

  const QuestionView({Key? key, required this.question, required this.onChoiceSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 5.0, right: 5.0, bottom: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QuestionTextView(text: question.questionText),
            const SizedBox(height: 10,),
            ChoiceView(
              text: question.listQuestionChoise.elementAt(0).choiceText,
              onChoiceSelected: onChoiceSelected,
              choiceIndex: 0,
            ),
            const SizedBox(height: 10,),
            ChoiceView(
              text: question.listQuestionChoise.elementAt(1).choiceText,
              onChoiceSelected: onChoiceSelected,
              choiceIndex: 1,
            ),
            const SizedBox(height: 10,),
            ChoiceView(
              text: question.listQuestionChoise.elementAt(2).choiceText,
              onChoiceSelected: onChoiceSelected,
              choiceIndex: 2,
            ),
            const SizedBox(height: 10,),
            ChoiceView(
              text: question.listQuestionChoise.elementAt(3).choiceText,
              onChoiceSelected: onChoiceSelected,
              choiceIndex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
