class QuizQuestion {
  const QuizQuestion(this.question, this.options);

  final String question;
  final List<String> options;

  List<String> get shuffledAns {
    final shuffledOptions = List.of(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
