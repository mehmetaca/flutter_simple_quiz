import 'package:flutter/material.dart';

class QuizResultView extends StatelessWidget {
  final VoidCallback resetCallBack;
  final int correctAnswerCount;
  final int inCorrectAnswerCount;

  const QuizResultView({
    Key? key,
    required this.resetCallBack,
    required this.correctAnswerCount,
    required this.inCorrectAnswerCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: correctAnswerCount,
              child: Container(
            color: Colors.green,
            child: Center(
                child: Text(
              correctAnswerCount.toString(),
              style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            )),
          )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: inCorrectAnswerCount,
              child: Container(
            color: Colors.red,
            child: Center(
              child: Text(inCorrectAnswerCount.toString(),
                  style:
                      const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            ),
          )),
          ElevatedButton(
            child: const Text('Play Again'),
            onPressed: resetCallBack,
          ),
          const SizedBox(
            width: 30,
            height: 50,
          ),
        ],
      ),
    );
  }
}
