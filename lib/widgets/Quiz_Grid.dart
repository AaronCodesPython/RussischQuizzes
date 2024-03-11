import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:russian_quiz_app/Grid_Square.dart';
class QuizGrid extends StatefulWidget {
  List<List<String>> quiz_data;
  List<List<List<int>>> quiz_solution;
  QuizGrid(this.quiz_data, this.quiz_solution,{super.key});

  @override
  State<QuizGrid> createState() => _QuizGridState(quiz_data, quiz_solution);
}

class _QuizGridState extends State<QuizGrid> {
  List<List<String>> quiz_data;
  List<List<List<int>>> quiz_solution;
  _QuizGridState(this.quiz_data, this.quiz_solution);
  List<List<bool>> clickedStatus = [];
  List<List<bool>> solvedStatus = [];
  List<List<int>> correctIndices = [];
  late int qdl;
  late int qdfl;


  @override
  void initState() {
    qdl = quiz_data.length;
    qdfl = quiz_data[0].length;
    super.initState();
    // Initialize clickedStatus with default values
    clickedStatus = List.generate(widget.quiz_data.length,
        (index) => List<bool>.filled(widget.quiz_data[index].length, false));
    solvedStatus = List.generate(widget.quiz_data.length,
    (index) => List<bool>.filled(widget.quiz_data[index].length, false));
  }

  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.quiz_data.length,
      ),
      itemCount: widget.quiz_data.length*widget.quiz_data[0].length,
      itemBuilder: (BuildContext context, int index) {
        int index_n = index~/widget.quiz_data [0].length;
        int index_m = index%widget.quiz_data.length;
        return GestureDetector(child: Grid_Square(index: index, char: widget.quiz_data[index_n][index_m], clicked: clickedStatus[index_n][index_m], solved: solvedStatus[index_n][index_m]), onTap: () {
          setState(() {
            clickedStatus[index_n][index_m] = !clickedStatus[index_n][index_m];
            correctIndices.add([index_n,index_m]);
            solvedStatus[index_n][index_m] = is_solved(index_n,index_m);
          });
        },);
      },
      
    );
  }

  bool is_solved(int n, int m){
    // find wich words cell is part of 
    List<List<List<int>>> words= [];
    for(List<List<int>> e in quiz_solution){
      for (List<int> innerList in e) {
        if (innerList[0] == n && innerList[1] == m) {
          words.add(e);
        }
      }
    }
    if(words.length == 0){
      return false;
    }
    for(List<List<int>> word in words){
      for(List<int> char in word){
        if(!clickedStatus[char[0]][char[1]]){
          return false;
        }
      }
    }

    for(List<List<int>> word in words){
      for(List<int> char in word){
        setState(() {
          solvedStatus[char[0]][char[1]] = true;
        });
        
      }
    }
    return true;
  }
}