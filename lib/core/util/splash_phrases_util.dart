String getPhrase = SplashPhrasesUtil().getPhrase();

class SplashPhrasesUtil {
  final List<SplashPhrasesInfo> _phrases = [
    SplashPhrasesInfo(index: 1, phrase: 'Arrumando sua estante...'),
    SplashPhrasesInfo(index: 2, phrase: 'Organizando seus livros...'),
    SplashPhrasesInfo(index: 3, phrase: 'Retirando a poeira...'),
    SplashPhrasesInfo(index: 4, phrase: 'Separando o melhor livro para o momento...'),
  ];

  List<SplashPhrasesInfo> _unusedList = [];

  String getPhrase() {
    _verifyUnused();

    var firstPhraseUnused = _unusedList.first.phrase;
    _unusedList.removeAt(0);

    return firstPhraseUnused;
  }

  void _verifyUnused() {
    if (_unusedList.isEmpty) {
      _unusedList = _phrases..shuffle();
    } else if (_unusedList.length == 1) {
      var unusedLastIndex = _unusedList.last.index;
      var shuffled = _phrases..shuffle();

      if (shuffled.first.index == unusedLastIndex) {
        shuffled.removeAt(0);
      }

      _unusedList.addAll(shuffled);
    }
  }
}

class SplashPhrasesInfo {
  int index;
  String phrase;

  SplashPhrasesInfo({required this.index, required this.phrase});
}