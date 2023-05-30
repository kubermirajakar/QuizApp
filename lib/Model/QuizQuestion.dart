class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> ShuffeledQuestion() {
    final shuffle = List.of(answer);
    shuffle.shuffle();
    return shuffle;
  }
}
