import 'package:flutter/material.dart';
import 'package:harrypotterquiz/app_answer_button.dart';
import 'package:harrypotterquiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.onSelectAnswer, });

  void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {

  var currentQuestionIndex=0;

  void answerQuestion(String selectedAnswer){
    setState(() {
    widget.onSelectAnswer(selectedAnswer);
    currentQuestionIndex++;  
    });
    
  }



  @override
  Widget build(context) {
    final currentQuestion=questions[currentQuestionIndex];
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
              return AnswerButton(
                answerText: item, 
                onAnswerSelect:(){
                  answerQuestion(item);
                }
                 );
              } 
            ),
          ],
        ),
      ),
    );
  }
}
