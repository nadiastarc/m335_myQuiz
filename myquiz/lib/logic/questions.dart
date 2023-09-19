import 'package:myquiz/model/quizmodel.dart';

QuizModel loadQuestion(int questionIndex) {
  List<QuizModel> questionList = [
    QuizModel("Frage1", "antwort1korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage2", "antwort2korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage3", "antwort3korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage4", "antwort4korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage5", "antwort5korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage6", "antwort6korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage7", "antwort7korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage8", "antwort8korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage9", "antwort9korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage10", "antwort10korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage11", "antwort11korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage12", "antwort12korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage13", "antwort13krrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage14", "antwort14korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage15", "antwort15korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage16", "antwort16korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage17", "antwort17korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage18", "antwort18korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage19", "antwort19korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
    QuizModel("Frage20", "antwort20korrekt", ["wAnt1", "wAnt2", "wAnt3"]),
  ];
  return questionList[questionIndex];
}
