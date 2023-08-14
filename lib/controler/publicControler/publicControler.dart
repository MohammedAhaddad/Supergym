import 'package:flutter/material.dart';
import 'package:get/get.dart';

class publicControler extends GetxController {
  bool t = true;
  int index = 0;
  PageController pageController = PageController();

  int pagRout(int x) {
    index = x;
    update();
    return index;
  }

  bool isShow() {
    t = !t;
    update();
    return t;
  }
}
