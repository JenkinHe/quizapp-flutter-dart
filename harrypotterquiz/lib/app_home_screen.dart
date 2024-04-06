import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/le-sserafim-chaewon-unforgiven-dewy-sage-4k-wallpaper-uhdpaper.com-423@1@k.jpg',
          width: 300,
        ),
        const SizedBox(height: 30,),
        const Text(
          "Harry Potter Quiz App",
          style: TextStyle(
            color: Color(0xff401201),
            fontSize: 22,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            "Quiz Start",
            style: TextStyle(
              color: Color(0xff401201),
              fontSize: 16,
            ),
            ))
      ],
    ));
  }
}
