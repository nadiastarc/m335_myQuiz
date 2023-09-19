import 'package:flutter/material.dart';
import 'package:myquiz/main.dart';
import 'package:myquiz/style/style.dart';
import 'package:myquiz/widgets/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class endQuiz extends StatelessWidget {
  final int userPoints;
  const endQuiz({Key? key, required this.userPoints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/SubWay.jpg"),
                    fit: BoxFit.fitHeight)),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text(
                          "Quiz beendet",
                          style: headerTextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        CircularStepProgressIndicator(
                          totalSteps: 6,
                          currentStep: userPoints,
                          width: 100,
                          roundedCap: (_, isSelected) => isSelected,
                        ),
                        Spacer(),
                        Text(
                          "You have " +
                              userPoints.toString() +
                              " von 6 Fragen richtig beantwortet.",
                          textAlign: TextAlign.center,
                          style: headerTextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        bigButton(context, () => MyApp(), "go back"),
                        Spacer(),
                      ],
                    )))));
  }
}
