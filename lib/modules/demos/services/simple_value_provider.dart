import 'package:flutter/material.dart';

class SimpleValuesProvider extends ChangeNotifier {
  double _doubleValue = 0;
  double get doubleValue => _doubleValue;

  String _text = "";
  String get text => _text;

  setText(String newText) {
    _text = newText;
    notifyListeners();
  }

  setDouble(double newValue) {
    _doubleValue = newValue;
    notifyListeners();
  }
}