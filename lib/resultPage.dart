import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/play_quiz_screen.dart';

class ResultPage extends StatelessWidget {
  final int correctAns;
  final int wrongAns;
  const ResultPage({super.key, required this.correctAns, required this.wrongAns});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        title: const Text(
          "Result",
          style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.w500,
              fontSize: 25),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Result("Correct Answers", correctAns),
                Result("Wrong Answers", wrongAns)
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: foregroundColor,
                  // minimumSize: Size(100, 70)
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const PlayQuizScreen()),
                      (route) => false);
                },
                child: const Text(
                  "Reset Quiz",
                  style: TextStyle(color: backgroundColor),
                ))
          ],
        ),
      ),
    );
  }

  Widget Result(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "$value",
          style: const TextStyle(color: foregroundColor, fontSize: 50),
        )
      ],
    );
  }
}
