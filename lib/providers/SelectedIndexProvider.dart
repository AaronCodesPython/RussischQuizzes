import 'package:flutter/material.dart';

class SelectedIndex with ChangeNotifier {
  int _index = 0;
  int get index => _index;

  void change(int newV) {
    _index = newV;
    notifyListeners();
  }
}
