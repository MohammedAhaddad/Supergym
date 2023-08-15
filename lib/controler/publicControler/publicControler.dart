import 'package:flutter/material.dart';
import 'package:get/get.dart';

class publicControler extends GetxController {
  bool t = true;
  int index = 0;
  String selectedOption = "high";
  bool expanded = false;
  bool expanded1 = false;
  bool expanded2 = false;
  bool expanded3 = false;
  bool expanded4 = false;
  bool expanded5 = false;
  bool expanded6 = false;
  bool expanded7 = false;
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

  String isSelect(v) {
    selectedOption = v;
    update();
    return selectedOption;
  }

  bool isExpanded(int i) {
    if (i == 0) {
      expanded = !expanded;

      update();
      return expanded;
    } else if (i == 1) {
      expanded1 = !expanded1;

      update();
      return expanded1;
    } else if (i == 2) {
      expanded2 = !expanded2;

      update();
      return expanded2;
    } else if (i == 3) {
      expanded3 = !expanded3;

      update();
      return expanded3;
    } else if (i == 4) {
      expanded4 = !expanded4;

      update();
      return expanded4;
    } else if (i == 5) {
      expanded5 = !expanded5;

      update();
      return expanded5;
    } else if (i == 6) {
      expanded6 = !expanded6;

      update();
      return expanded6;
    }
    update();
    return false;
  }
}
