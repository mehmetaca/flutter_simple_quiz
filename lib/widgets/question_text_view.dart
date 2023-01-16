import 'package:flutter/material.dart';

class QuestionTextView extends StatelessWidget {
  final String text;

  const QuestionTextView({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,
      style: const TextStyle(fontSize: 25.0,
          fontWeight: FontWeight.bold),
    ));
  }
}
