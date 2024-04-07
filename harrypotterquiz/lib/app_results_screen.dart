


import 'package:flutter/material.dart';
import 'package:harrypotterquiz/app_summary_section.dart';
import 'package:harrypotterquiz/data/questions.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key,required this.collatedAnswers});
  

  final List<String> collatedAnswers;

  List<Map<String,Object>> getSummaryData(){
      List<Map<String,Object>> summaryData=[];

      for(var loopVar=0; loopVar<collatedAnswers.length;loopVar++){
        summaryData.add({
          'questionIndex':loopVar,
          'question':questions,
          'correctAnswer':questions[loopVar].answersList[0],
          'chosenAnswer':collatedAnswers[loopVar]

      });
      }

    return summaryData;

  }

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
            const Text("You have answered x out of y questions correctly:"),
            const SizedBox(height: 30,),
            SummarySection(getSummaryData()),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child:const Text("Restart"))
          ],
        ),
      ),
    );
  }
  

}