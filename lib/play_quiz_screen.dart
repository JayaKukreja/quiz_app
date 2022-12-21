import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';
import 'package:quiz_app/question_answer_model.dart';
import 'package:quiz_app/resultPage.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({super.key});

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  int correctAnswers = 0;
  int wrongAnswers = 0;
  String selectedAnswer = "";
  String correctAnswer = "";
  bool isAnswerLocked = false;
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        title: const Text(
          "Play Quiz",
          style: TextStyle(
              color: backgroundColor,
              fontWeight: FontWeight.w500,
              fontSize: 25),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: quizQuestions.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // isAnswerLocked = false;

          QuestionAnswerModel model = quizQuestions[index];
          // isAnswerLocked = false;
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        model.question,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                          children: List.generate(
                        model.options.length,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              isAnswerLocked = true;
                              selectedAnswer = model.options[index];
                              correctAnswer = model.correctAnswer;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: foregroundColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(7)),
                                color: selectedAnswer == model.options[index]
                                    ? foregroundColor
                                    : backgroundColor),
                            child: Text(
                              model.options[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnswerLocked) {
            currentIndex++;
            isAnswerLocked = false;
            if (selectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }
            if (currentIndex != quizQuestions.length) {
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            correctAns: correctAnswers,
                            wrongAns: wrongAnswers,
                          )));
            }
          } else {
          }
        },
        child: Container(
          color: foregroundColor,
          alignment: Alignment.center,
          height: 70,
          child: const Text(
            "Next",
            style: TextStyle(
                color: backgroundColor,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
