import 'package:flutter/material.dart';

class GreetingProvider extends ChangeNotifier {
  final String greeting = 'Hello, World! from Provider';
  int count = 1000000;

  void increase() {
    count = count + 100;
    notifyListeners();
  }

  void decrease() {
    count = count - 100;
    notifyListeners();
  }
}
