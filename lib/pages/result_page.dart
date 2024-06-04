import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Widgets/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/ui_helpers/color_util.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key, required this.selectedAnswer, required this.onRestart});

  final List<String> selectedAnswer;
  final void Function() onRestart;

  get correctAns => null;

  List<Map<String, String>> get summaryData {
    List<Map<String, String>> summary = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': '$i',
        'question': questions[i].question,
        'correct_answer': questions[i].options[0],
        'user_answer': selectedAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You Answered $numCorrectAnswer out of $numTotalQuestion questions correctly!',
            style: GoogleFonts.lato(
              color: questionTxtColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: txtColor,
            ),
            onPressed: onRestart,
            icon: const Icon(Icons.restart_alt_outlined),
            label: const Text(
              '  Restart Quiz',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
