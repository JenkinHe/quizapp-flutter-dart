

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:harrypotterquiz/app_home_screen.dart';
import 'package:harrypotterquiz/app_questions_screen.dart';

class Quiz extends StatefulWidget{

  const Quiz({super.key});
  
  @override
  State<Quiz> createState(){
    return _Quiz();
  }

}


class _Quiz extends State<Quiz>{

  Widget? activeScreen ;

  @override
  void initState() {
    activeScreen= HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen=const QuestionsScreen();
    });
  }

@override
  Widget build( context) {
    
    return MaterialApp(
    home: Scaffold(
      body: Container(
        color:const Color(0xffF2D3AC),
        child: activeScreen
        ),
      ),
    );
    
  }
}