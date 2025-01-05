import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onPressed, super.key});

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(221, 41, 41, 41),
          ),
        ));
  }
}
