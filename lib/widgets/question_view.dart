import 'package:flutter/material.dart';
import 'package:flutter_simple_quiz/widgets//question_text_view.dart';
import 'package:flutter_simple_quiz/models/question.dart';

import 'choice_view.dart';

class QuestionView extends StatelessWidget {
  final Question question;
  final Function onChoiceSelected;

  const QuestionView({Key? key, required this.question, required this.onChoiceSelected}) : super(key: key);

  Widget getChoiceList()
  {
    List<Widget> widgetList = [];
    for(int i = 0; i<question.listQuestionChoise.length; i++)
      {
      widgetList.add(Container(
        margin: const EdgeInsets.only(top:20.0),
        child: ChoiceView(
            text: question.listQuestionChoise.elementAt(i).choiceText,
            onChoiceSelected: onChoiceSelected,
            choiceIndex: i,
          ),
      ),);
      }

      return Column(
        children: widgetList,
      );
  }

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
            getChoiceList(),
          ],
        ),
      ),
    );
  }
}
