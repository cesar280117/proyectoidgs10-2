import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FigurasController extends GetxController {
  Color color = Colors.black;

  void cambioColor() {
    if (color == Colors.blue) {
      color = Colors.black;
    } else {
      color = Colors.blue;
    }
    update();
  }
}
