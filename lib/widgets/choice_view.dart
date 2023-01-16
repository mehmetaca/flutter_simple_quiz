import 'package:flutter/material.dart';

class ChoiceView extends StatelessWidget {
  final String text;
  final Function onChoiceSelected;
  final int choiceIndex;

  const ChoiceView({Key? key,
    required this.text,
    required this.onChoiceSelected,
    required this.choiceIndex,
  }) : super(key: key);

  String get choiceLabel {
    String result = '';

    if (choiceIndex == 0) {
      result = 'A.';
    } else if (choiceIndex == 1) {
      result = 'B.';
    } else if (choiceIndex == 2) {
      result = 'C.';
    } else if (choiceIndex == 3) {
      result = 'D.';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))),
          backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(
              255,
              39,
              48,
              50,
            ),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              choiceLabel,
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            Text(text,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.normal)),
          ],
        ),
      ),
      onPressed: () {
        onChoiceSelected(choiceIndex);
      },
    );
  }
}
