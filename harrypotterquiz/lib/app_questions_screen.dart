import 'package:flutter/material.dart';
import 'package:harrypotterquiz/app_answer_button.dart';
import 'package:harrypotterquiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {

  final currentQuestion=questions[0];// access first question


  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionText,
              style: const TextStyle(
                color: Color(0xff401201),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswerList().map((item){
              return AnswerButton(answerText: item, onAnswerSelect: (){});
              } 
            ),
          ],
        ),
      ),
    );
  }
}
