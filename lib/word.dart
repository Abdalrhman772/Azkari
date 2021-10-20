import 'package:flutter/material.dart';

class Word with ChangeNotifier {
  String id, arWord, enWord;

  Word({
    required this.id,
    required this.arWord,
    required this.enWord,
  });
}

class Words with ChangeNotifier {
  final List<Word> _words = [
    Word(
        id: '1',
        arWord: 'سبحان الله',
        enWord: 'Glory be to Allah (Subhan allah)'),
    Word(
        id: '2',
        arWord: 'الحمد الله',
        enWord: 'Praise be to Allah (Alhamdulillah)'),
    Word(
        id: '3',
        arWord: 'لا إله إلا الله',
        enWord: 'No God except Allah (la iilah iila Allah)'),
    Word(
        id: '4',
        arWord: 'الله أكبر',
        enWord: 'Allah is the greatest (Allahu Akbar)'),
  ];
  List<Word> get words => [..._words];

  void removeWord(String id) {
    _words.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  void addWord(String id, String ar, String en) {
    _words.add(
      Word(id: id, arWord: ar, enWord: en),
    );
    notifyListeners();
  }
}
