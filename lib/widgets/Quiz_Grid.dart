
import 'package:flutter/material.dart';
class QuizGrid extends StatelessWidget {
  List<List<String>> quiz_data;
  List<Container> quiz_texts = [];
  
  QuizGrid(this.quiz_data, {super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> quizTexts = quiz_data.expand((row) => row.map((char) =>  Container(
      alignment: Alignment.center,
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
        child: Text(char,style: const TextStyle(fontSize: 10, color: Colors.white)),
        onPressed: (){}, // Adjust font size as needed
      ),
    )
)).toList();

    return GridView.count(
      crossAxisCount: quiz_data[0].length,
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      children: quizTexts,
      
    );
  }
}