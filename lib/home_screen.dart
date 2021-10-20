import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_words/bottomsheet.dart';
import 'package:my_words/word.dart';
import 'package:my_words/word_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _bottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (_) => const BottomSheetWidget(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(70),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Word> _w = Provider.of<Words>(context).words;
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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemBuilder: (_, i) => ChangeNotifierProvider.value(
            value: _w[i],
            child: const WordWidget(),
          ),
          separatorBuilder: (_, i) => const Divider(
            thickness: 2,
          ),
          itemCount: _w.length,
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
