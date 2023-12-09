import 'package:flutter/material.dart';

class NameProvider extends ChangeNotifier {
  String? choosenData;

  void setName(String data) {
    choosenData = data;
    notifyListeners();
  }
}
