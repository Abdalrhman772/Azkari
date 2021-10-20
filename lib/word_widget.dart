import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_words/word.dart';
import 'package:provider/provider.dart';

class WordWidget extends StatelessWidget {
  const WordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Word _word = Provider.of(context);
    return ListTile(
      //tileColor: colo,
      title: Text(
        _word.arWord,
        style: GoogleFonts.tajawal(
          textStyle: Theme.of(context).textTheme.headline5,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        _word.enWord,
        style: GoogleFonts.tajawal(
          textStyle: Theme.of(context).textTheme.headline5,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          Provider.of<Words>(context, listen: false).removeWord(_word.id);
        },
        icon: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: const Icon(
            Icons.delete_outline_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
