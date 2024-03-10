import 'package:flutter/material.dart';


class Grid_Square extends StatelessWidget{
    String char;
    bool clicked;
    bool solved;
    int index;
    Grid_Square({required this.index,required this.char, required this.clicked,required this.solved});

  Color get_bg_color(){
    if(solved){
      return Colors.green;
    }
    else if(clicked){
      return Colors.orange;
    }
    else{
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(2),
          color: get_bg_color(),
          child: Center(
            child: Text(
              char,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        
      );
  }


}

