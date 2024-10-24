import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget {
  const AnswerButtons({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(160, 40),
      ),
      child: Text(answerText),
    );
  }
}
