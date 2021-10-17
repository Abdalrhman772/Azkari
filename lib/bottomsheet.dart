import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetWidget extends StatefulWidget {
  final Function(String id, String ar, String en) a;
  const BottomSheetWidget(this.a, {Key? key}) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

final arText = TextEditingController();
final enText = TextEditingController();

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text('أضف ذِكراً جديدا',
              style: GoogleFonts.tajawal(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: Theme.of(context).primaryColor,
              )),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: arText,
            decoration: InputDecoration(
              labelText: 'أدخل الذكر باللغة العربية',
              labelStyle:
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.secondary),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.secondary),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: enText,
            decoration: InputDecoration(
              labelText: 'Enter Zikr in English',
              labelStyle:
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.secondary),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.secondary),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary)),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          MaterialButton(
            onPressed: () {
              widget.a(DateTime.now().toString(), arText.text, enText.text);
              arText.clear();
              enText.clear();
              Navigator.pop(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Add Zikr',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Theme.of(context).primaryColor,
            minWidth: double.infinity,
            height: 43,
          ),
        ],
      ),
    );
  }
}
