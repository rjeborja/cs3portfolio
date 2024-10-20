import 'package:flutter/material.dart';

class ButtonState with ChangeNotifier {
  int? _clickedButtonIndex;

  int? get clickedButtonIndex => _clickedButtonIndex;

  void setClickedButtonIndex(int index) {
    _clickedButtonIndex = index;
    notifyListeners();
  }
}
