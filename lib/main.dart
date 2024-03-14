import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:russian_quiz_app/providers/SelectedIndexProvider.dart';
import 'package:russian_quiz_app/screens/HomeScreen.dart';
import 'package:russian_quiz_app/screens/MediaScreen.dart';
import 'package:russian_quiz_app/screens/QuizScreen.dart';
import 'package:russian_quiz_app/screens/VocabScreen.dart';
import 'functions/randomQuote.dart';

// TODO: Only safe data over multiple runs if not run in Browser!
void main(List<String> args) async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SelectedIndex()),
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(randomQuote()),
        '/Vocab': (context) => VocabScreen(),
        '/Quiz': (context) => QuizScreen(),
        '/Media': (context) => MediaScreen(),
        
      },
    );
  }
}
