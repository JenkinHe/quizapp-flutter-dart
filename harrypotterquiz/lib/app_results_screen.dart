


import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  ResultsScreen({super.key});

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
            const Text("List of questions,correct answers,chosen answer"),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child:const Text("Restart"))
          ],
        ),
      ),
    );
  }
  

}