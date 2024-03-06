typedef Strategy = double Function(List<String> p0, List<String> p1);

class PokerPlayer {
  List<String> _currentHand = ['King of clubs', 'Nine of hearts'];

  double _surenessInWin = 0;

  void calculateProbabilities(
    List<String> cardOnDesk,
    Strategy strategy,
  ) =>
      _surenessInWin = strategy(cardOnDesk, _currentHand);
}

void main() {
  final opponent = PokerPlayer();

  final Strategy fakeStrategy = (p0, p1) {
    print('Карты противника: ${p0.join(', ')}');
    // субъективная оценка выигрыша по калькулятору шансов в покере
    return 1;
  };

  opponent.calculateProbabilities(
    ['Nine of diamonds', 'king of hearts'],
    fakeStrategy,
  );
}
