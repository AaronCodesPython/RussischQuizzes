import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/GeneralPurpose_Card.dart';
import 'package:russian_quiz_app/widgets/MainDrawer.dart';
import '../MyPDFViewer.dart';
import '../data/Colors.dart' as UsedColors;
// Ensure correct import path

class MediaScreen extends StatelessWidget {
  MediaScreen();
  List<List<String>> texts = [["dwdwd", 'assets/pdfs/1.pdf'], ["dwdwd", 'assets/pdfs/1.pdf'],["dwdwd", 'assets/pdfs/1.pdf']];
  
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
              children: texts.map((text) => GestureDetector(
                onTap: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyPdfViewer(pdfPath:text[1]),
                ),
              );

                },
                child: GP_Card(text[0], text[0], "assets/ural.jpg"))).toList()),
        ),
      ),
    );
  }
}
