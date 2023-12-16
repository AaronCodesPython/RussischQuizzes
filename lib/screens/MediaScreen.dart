import 'package:flutter/material.dart';
import 'package:russian_quiz_app/widgets/MainDrawer.dart';
// Ensure correct import path

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MainDrawer(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("MEDIA")]),
      ),
    );
  }
}
