import 'dart:io';

import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/MainDrawer.dart';
import 'package:russian_quiz_app/widgets/main_options.dart'; // Ensure correct import path
import '../data/Quotes.dart';
import '../data/Colors.dart' as UsedColors;
import '../functions/randomQuote.dart';

//switch to burger Menu
//Column(children: options.map((o) => MainOption(o[0], o[1])).toList()),
class HomeScreen extends StatelessWidget {
  List<String> quote;
  HomeScreen(this.quote);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: UsedColors.mainBG,
      appBar: AppBar(
        title: Text("widget.title"),
        backgroundColor: UsedColors.foregroundBG,
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 12, color: UsedColors.foregroundBG)),
              ),
              child: Text(
                quote[0],
                style: TextStyle(color: UsedColors.textColor),
              ),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 12, color: UsedColors.foregroundBG)),
                ),
                child: Text(
                  quote[1],
                  style: TextStyle(color: UsedColors.textColor),
                )),
          )
        ]),
      ),
    );
  }
}
