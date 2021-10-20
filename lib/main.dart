import 'package:flutter/material.dart';
import 'package:my_words/home_screen.dart';
import 'package:my_words/word.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Words(),  
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(),
          primaryColor: Colors.greenAccent.shade700,
          colorScheme: ColorScheme.light(
            secondary: Colors.lightGreenAccent.shade700,
          ),
          canvasColor: Colors.yellow.shade50,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
