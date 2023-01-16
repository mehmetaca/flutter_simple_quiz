import 'package:flutter/material.dart';

class ChoiceView extends StatelessWidget {
  final String text;
  final Function onChoiceSelected;
  final int choiceIndex;

  const ChoiceView({
    Key? key,
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
    return GestureDetector(
      onTap: () {
        onChoiceSelected(choiceIndex);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                choiceLabel,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ConstrainedBox(constraints: const BoxConstraints(
                      minHeight: 40, minWidth: double.infinity),
                    child: Text(text,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.normal)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
