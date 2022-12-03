import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/play_quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Start Quiz"),
        centerTitle: true,
        backgroundColor: foregroundColor,
        foregroundColor: backgroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "QUIZ APP",
              style: TextStyle(
                  color: foregroundColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const PlayQuizScreen()))
              },
              style: ElevatedButton.styleFrom(backgroundColor: foregroundColor),
              child: const Text(
                "Start Quiz",
                style: TextStyle(color: backgroundColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
