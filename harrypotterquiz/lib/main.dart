import 'package:flutter/material.dart';
import 'package:harrypotterquiz/app_home_screen.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: Container(
        color:const Color(0xffF2D3AC),
        child:const  HomeScreen()
        ),
    ),
  ));
}
