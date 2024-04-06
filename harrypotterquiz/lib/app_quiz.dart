

import 'package:flutter/material.dart';
import 'package:harrypotterquiz/app_home_screen.dart';

class Quiz extends StatefulWidget{

  const Quiz({super.key});
  
  @override
  State<Quiz> createState(){
    return _Quiz();
  }

}


class _Quiz extends State<Quiz>{

@override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    home: Scaffold(
      body: Container(
        color:const Color(0xffF2D3AC),
        child:const  HomeScreen()
        ),
      ),
    );
    
  }
}