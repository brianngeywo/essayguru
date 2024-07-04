import 'package:flutter/material.dart';

class IntController {
  final ValueNotifier<int> valueNotifier = ValueNotifier<int>(0);

  int get value => valueNotifier.value;

  void updateValue(int newValue) {
    valueNotifier.value = newValue;
  }

  void increment() {
    valueNotifier.value++;
  }

  void decrement() {
    valueNotifier.value--;
  }

  void dispose() {
    valueNotifier.dispose();
  }
}
