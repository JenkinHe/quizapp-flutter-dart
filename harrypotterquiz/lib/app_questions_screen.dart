import 'package:flutter/material.dart';
import 'package:harrypotterquiz/app_answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The Question"),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: "Answer 1", onAnswerSelect: (){}),
          AnswerButton(answerText: "Answer 2", onAnswerSelect: (){}),
          AnswerButton(answerText: "Answer 3", onAnswerSelect: (){}),
          AnswerButton(answerText: "Answer 4", onAnswerSelect: (){}),
        ],
      ),
    );
  }
}
