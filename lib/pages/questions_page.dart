import 'package:flutter/material.dart';
import 'package:quiz_app/Widgets/option_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/ui_helpers/color_util.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage(this.onSelectOption, {super.key});

  final void Function(String option) onSelectOption;

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int currIndex = 0;

  void answerQuestion(String option) {
    widget.onSelectOption(option);
    setState(() {
      currIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[currIndex];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currQuestion.question,
            style: GoogleFonts.lato(
              color: questionTxtColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ...currQuestion.shuffledAns.map((option) {
            return OptionButton(
              option: option,
              onTap: () {
                answerQuestion(option);
              },
            );
          }),
        ],
      ),
    );
  }
}
