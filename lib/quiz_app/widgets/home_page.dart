// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, unused_local_variable, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_basics/counter_app/main.dart';
import 'package:flutter_basics/quiz_app/models/answer_item_model.dart';
import 'package:flutter_basics/quiz_app/models/answer_item.dart';
import 'package:flutter_basics/quiz_app/models/question_item_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0, myTotalScore = 0;
  int answerChosen = -1;
  int resultedScore = questions.length * 10;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    debugPrint("Total Score: $myTotalScore");
    showTotalScore = myTotalScore >= resultedScore;
    return Scaffold(
        // appBar: AppBar(
        //   leading: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        //   title: const Center(
        //     child: Text(
        //       "Home",
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   backgroundColor: Colors.blue,
        // ),
        body: SafeArea(
      child: !showTotalScore
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      questions[questionIndex].title,
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Colors.black87,
                              ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 9, top: 6),
                    child: Text(
                      "Answer and get points",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          questions[questionIndex].availableAnswers.length,
                          (index) => AnswerItem(
                              answer: questions[questionIndex].availableAnswers[index],
                              isAnswerChosen: answerChosen == index,
                              questionIndexChangeCallback: () {
                                setState(() {
                                  answerChosen = index;
                                });
                              })),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (questionIndex + 1 < questions.length) {
                            setState(() {
                              questionIndex += 1;
                            });
                          }
                          setState(() {
                            myTotalScore += 10;
                            answerChosen = -1;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Congratulations",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Your total score is: $myTotalScore",
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          questionIndex = 0;
                          myTotalScore = 0;
                        });
                      },
                      child: Text(
                        "Reset Quiz",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
    )
  );
  }
}
