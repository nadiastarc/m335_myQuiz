import 'package:myquiz/model/quizmodel.dart';

List<QuizModel> questionList = [
  QuizModel("What does “www” stand for in a website browser", "World Wide Web",
      ["wired worst watch", "wrong woody witch", "worst white water"]),
  QuizModel("How long is an Olympic swimming pool (in meters)", "50",
      ["55", "60", "40"]),
  QuizModel("What geometric shape is generally used for stop signs", "Octagon",
      ["Hexagon", "Triangle", "heptagon"]),
  QuizModel("What is ^cynophobia^", "Fear of dogs",
      ["Fear of butterflys", "Fear of spiders", "Fear of cats"]),
  QuizModel("What is the name of the biggest technology company in South Korea",
      "Samsung", ["Apple", "Amazone", "Huawei"]),
  QuizModel("What is the rarest M&M color", "Brown", ["Red", "Blue", "Pink"]),
];
QuizModel loadQuestion(int questionIndex) {
  return questionList[questionIndex];
}
