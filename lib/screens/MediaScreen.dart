import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/GeneralPurpose_Card.dart';
import 'package:russian_quiz_app/widgets/MainDrawer.dart';
import '../data/Colors.dart' as UsedColors;
// Ensure correct import path

class MediaScreen extends StatelessWidget {
  MediaScreen();
  List<String> texts = ["dwdwd", "fefsf", "feggsg","dwdwd", "fefsf", "feggsg","dwdwd", "fefsf", "feggsg"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: UsedColors.foregroundBG,),
      drawer: const MainDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: texts.map((text) => GP_Card(text)).toList()),
        ),
      ),
    );
  }
}
