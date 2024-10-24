import 'package:flutter/material.dart';
import 'package:quizapp/answer_buttons.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestions() {
    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    currentQuestionIndex++;
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffleAnswers().map(
              (answer) {
                return AnswerButtons(
                  answerText: answer,
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
