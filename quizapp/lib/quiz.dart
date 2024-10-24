import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: screenWidget,
      ),
    );
  }
}
