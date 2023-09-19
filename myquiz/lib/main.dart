import 'package:flutter/material.dart';
import 'package:myquiz/pages/createQuiz.dart';
import 'package:myquiz/pages/editQuiz.dart';
import 'package:myquiz/pages/quizPage.dart';
import 'package:myquiz/style/style.dart';
import 'package:myquiz/widgets/widgets.dart';

void main() {
  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.tealAccent), home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/studyfy2.jpg"),
              fit: BoxFit.fitHeight,
            )),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(flex: 2),
                        Text(
                          "STUDYFY",
                          style: AppNameTextStyle(color: Colors.black),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        bigButton(context, () => QuizPage(), "start Quiz"),
                        Spacer(),
                        bigButton(context, () => CreateQuiz(), "create Quiz"),
                        Spacer(),
                        roundButton(context),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    )))));
  }
}
