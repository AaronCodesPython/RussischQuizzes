import 'package:flutter/material.dart';

import '../widgets/MainDrawer.dart';
// Ensure correct import path

class VocabScreen extends StatelessWidget {
  const VocabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MainDrawer(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("VOCAB")]),
      ),
    );
  }
}
