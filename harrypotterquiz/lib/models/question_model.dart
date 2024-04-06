


class QuizQuestion {

  const QuizQuestion(this.questionText,this.answersList);

  final String questionText;
  final List<String> answersList;

  List<String> getShuffledAnswerList(){
    final shuffledAnswerList =List.of(answersList);
    shuffledAnswerList.shuffle();
    return shuffledAnswerList;
  }


}