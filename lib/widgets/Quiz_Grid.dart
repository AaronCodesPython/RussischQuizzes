import 'package:flutter/material.dart';
import 'package:russian_quiz_app/Grid_Square.dart';
class QuizGrid extends StatefulWidget {
  List<List<String>> quiz_data;

  QuizGrid(this.quiz_data, {super.key});

  @override
  State<QuizGrid> createState() => _QuizGridState(quiz_data);
}

class _QuizGridState extends State<QuizGrid> {
  List<List<String>> quiz_data;
  _QuizGridState(this.quiz_data);
  List<List<bool>> clickedStatus = [];
  List<List<int>> correctIndices = [];
  @override
  void initState() {
    
    super.initState();
    // Initialize clickedStatus with default values
    clickedStatus = List.generate(widget.quiz_data.length,
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
        return GestureDetector(child: Grid_Square(index: index, char: widget.quiz_data[index_n][index_m], clicked: clickedStatus[index_n][index_m], solved: false), onTap: () {
          setState(() {
            clickedStatus[index_n][index_m] = !clickedStatus[index_n][index_m];
            correctIndices.add([index_n,index_m]);
            print(correctIndices);
          });
        },);
      },
    );
  }
}