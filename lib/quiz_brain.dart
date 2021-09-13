import 'Ques.dart';

class QuizBrain{
  int _n = 0;
  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
  ];
  void nextq(){
    if(_n < _questionBank.length-1)
      _n++;
  }
  String getQ()
  {
    return _questionBank[_n].q;
  }

  bool answer()
  {
    return _questionBank[_n].ans;
  }
  bool isFinished()
  {
    if(_n >= _questionBank.length-1)
      return true;
    else
      return false;
  }
  void reset()
  {
    _n = 0;
  }
}