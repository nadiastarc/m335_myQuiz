List<String> getRandomQuestionList(
    List<String> wrongAnswers, String correctAnswer) {
  wrongAnswers.add(correctAnswer);
  wrongAnswers.shuffle();
  return wrongAnswers;
}

List<int> getRandomQuestionIndex(int length) {
  var list = new List<int>.generate(length, (index) => index);
  list.shuffle();
  return list;
}

int getCorrectAnswerIndex(List<String> answers, String correctAnswer) {
  for (int i = 0; i < answers.length; i++) {
    if (answers[i].compareTo(correctAnswer) == 0) {
      return i;
    }
  }
  return -1;
}
