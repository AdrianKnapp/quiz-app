import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    void answerQuestion(String answer) {
      widget.onSelectAnswer(answer);

      setState(() {
        currentQuestionIndex++;
      });
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(221, 41, 41, 41),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(
                      answerText: answer,
                      onPressed: () {
                        answerQuestion(answer);
                      },
                    ),
                    const SizedBox(height: 4),
                  ],
                );
              }),
            ]),
      ),
    );
  }
}
