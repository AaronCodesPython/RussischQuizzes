import 'package:flutter/material.dart';
import 'package:russian_quiz_app/data/Quizzes_Map.dart';
import 'package:russian_quiz_app/widgets/Quiz_Grid.dart';
import '../data/Colors.dart' as UsedColors;
import '../widgets/MainDrawer.dart';
// Ensure correct import path

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: UsedColors.foregroundBG,),
      drawer: const MainDrawer(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Expanded(child: QuizGrid(q1, q1_l))]),
      ),
    );
  }
}
