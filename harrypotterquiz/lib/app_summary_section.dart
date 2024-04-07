

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SummarySection extends StatelessWidget{
  const SummarySection(this.displayData,{super.key});

  final List<Map<String,Object>> displayData;

  bool isCorrectAnswer(String userInput, String correctAnswer){
    return userInput==correctAnswer?true:false;
  }

  @override
  Widget build(context) {
    
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: displayData.map((data){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [



              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isCorrectAnswer(data['chosenAnswer'].toString(), data['correctAnswer'].toString())?
                  const Color.fromARGB(100,0,255,0):
                  Color.fromARGB(141, 223, 107, 107),
                  borderRadius: BorderRadius.circular(100),

                ),
                child:
                Text(((data['questionIndex']as int)+1).toString()
                )
                ),




              const SizedBox(width: 20,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(data['question'].toString()),
                  Text(data['chosenAnswer'].toString()),
                  Text(data['correctAnswer'].toString()),
                  const SizedBox(height: 10,)
                ],),
              )
            ],);
          } ,).toList(),
        ),
      ),
    );
  }
}