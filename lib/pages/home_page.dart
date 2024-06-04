import 'package:flutter/material.dart';
import 'package:quiz_app/ui_helpers/color_util.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: imgColor,
            width: 300,
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter The fun way!',
            style: TextStyle(
              color: txtColor,
              fontSize: 23,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(color: gredientColorTop),
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
