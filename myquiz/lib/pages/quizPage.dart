import 'package:flutter/material.dart';
import 'package:myquiz/logic/questionControler.dart';
import 'package:myquiz/model/quizmodel.dart';
import 'package:myquiz/pages/endQuiz.dart';
import 'package:myquiz/style/style.dart';
import 'package:myquiz/widgets/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:myquiz/logic/questions.dart';

class QuizPage extends StatefulWidget {
  //StatefulWidget --> kann Änderungen n seite machen, Unterschied dazu : StatelessWidget
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentLvl = 1;
  int userPoints = 0;
  late QuizModel currenQuestion;
  late List<String> answers;
  late List<int> questionIndex;
  List<bool?> answerValidation = [null, null, null, null];
  int listLengh = questionList.length;
  @override
  void initState() {
    questionIndex = getRandomQuestionIndex(listLengh);
    super.initState();
    loadNewQuestion();
  }

  loadNewQuestion() {
    setState(() {
      currenQuestion = loadQuestion(questionIndex[currentLvl - 1]);
      answers = getRandomQuestionList(
          currenQuestion.wrongAnswers, currenQuestion.correctAnswer);
      answerValidation = [null, null, null, null];
      //TODO: check diffrent
    });
  }

  validateAndShowQuestion(int UserIndex) async {
    setState(() {
      int correctIndex =
          getCorrectAnswerIndex(answers, currenQuestion.correctAnswer);
      answerValidation[correctIndex] = true;
      if (UserIndex == correctIndex) {
        userPoints++;
      } else {
        answerValidation[UserIndex] = false;
      }
    });

    await Future.delayed(Duration(seconds: 2));
    currentLvl++;
    if (currentLvl <= listLengh) {
      loadNewQuestion();
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => endQuiz(userPoints: this.userPoints)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: myAppBar("Quiz"),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/studyfy2.jpg"),
                fit: BoxFit.fitHeight)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  currenQuestion.question,
                  style: headerTextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  "Current Progress",
                  style: underTitleTextStyle(color: Colors.white70),
                ),
                StepProgressIndicator(
                  totalSteps: listLengh,
                  currentStep: currentLvl,
                  size: 8,
                  padding: 0,
                  selectedColor: Colors.yellow,
                  unselectedColor: Colors.cyan,
                  roundedEdges: Radius.circular(10),
                  selectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellowAccent, Colors.deepOrange],
                  ),
                  unselectedGradientColor: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.black, Colors.grey],
                  ),
                ),
                Spacer(),
                Text("Points: " + userPoints.toString(),
                    style: headerTextStyle(color: Colors.white)),
                Spacer(),
                GestureDetector(
                  child: answerCard(answers[0], context,
                      check: answerValidation[0]),
                  onTap: () {
                    validateAndShowQuestion(0);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[1], context,
                      check: answerValidation[1]),
                  onTap: () {
                    validateAndShowQuestion(1);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[2], context,
                      check: answerValidation[2]),
                  onTap: () {
                    validateAndShowQuestion(2);
                  },
                ),
                GestureDetector(
                  child: answerCard(answers[3], context,
                      check: answerValidation[3]),
                  onTap: () {
                    validateAndShowQuestion(3);
                  },
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
