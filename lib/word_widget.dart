import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WordWidget extends StatelessWidget {
  final String id, arWord, enWord;
  final Function r;
  const WordWidget(this.id, this.arWord, this.enWord, this.r, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //tileColor: colo,
      title: Text(
        arWord,
        style: GoogleFonts.tajawal(
            textStyle: Theme.of(context).textTheme.headline5,
            fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        enWord,
        style: GoogleFonts.tajawal(
          textStyle: Theme.of(context).textTheme.headline5,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          r(id);
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
