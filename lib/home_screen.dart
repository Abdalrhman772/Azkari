import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_words/bottomsheet.dart';
import 'package:my_words/word.dart';
import 'package:my_words/word_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Word> _word = [
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

  void removeWord(String id) {
    setState(() {
      _word.removeWhere((element) => element.id == id);
    });
  }

  void addWord(String id, String ar, String en) {
    setState(() {
      _word.add(
        Word(id: id, arWord: ar, enWord: en),
      );
    });
  }

  void _bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (_) => BottomSheetWidget(addWord),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'أذكاري',
            style: GoogleFonts.arefRuqaa(
              fontSize: 35,
              color: Colors.yellow[50],
            ),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemBuilder: (_, i) => WordWidget(
            _word[i].id,
            _word[i].arWord,
            _word[i].enWord,
            removeWord,
          ),
          separatorBuilder: (_, i) => const Divider(
            thickness: 2,
          ),
          itemCount: _word.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _bottomSheet,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
