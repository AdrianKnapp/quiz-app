import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 180,
            color: const Color.fromARGB(221, 41, 41, 41),
          ),
          const SizedBox(height: 30),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Color.fromARGB(221, 41, 41, 41),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Color.fromARGB(221, 41, 41, 41),
              side: BorderSide.none,
            ),
            icon: const Icon(
              Icons.chevron_right,
              size: 20,
              color: Color.fromARGB(221, 41, 41, 41),
            ),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
