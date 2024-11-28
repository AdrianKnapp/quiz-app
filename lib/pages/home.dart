import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void startQuiz() {
    print('Start Quiz');
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: startQuiz,
                child: const Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
      backgroundColor: Colors.purple,
    );
  }
}
