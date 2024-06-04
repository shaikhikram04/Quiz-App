import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/functions/bg_gredient.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/pages/questions_page.dart';
import 'package:quiz_app/pages/result_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var activeScreen = 'Home-Screen';
  List<String> selectedAns = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  void chooseAnswer(String option) {
    selectedAns.add(option);
    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = 'Result-Screen';
      });
    }
  }

  void restart() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'Question-Screen') {
      screenWidget = QuestionsPage(chooseAnswer);
    } else if (activeScreen == 'Result-Screen') {
      screenWidget = ResultPage(selectedAnswer: selectedAns, onRestart: restart);
      selectedAns = [];
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: bgGredient(),
          child: screenWidget,
        ),
      ),
    );
  }
}
