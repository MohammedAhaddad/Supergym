import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supergym/main.dart';

class LocaleControler extends GetxController {
  Locale intialLand = sharedPreferences?.getString("locale") == null
      ? Locale("ar")
      : Locale(sharedPreferences!.getString("locale").toString());
  void changLocale(String local) {
    Locale locale = Locale(local);
    sharedPreferences!.setString("locale", local);
    Get.updateLocale(locale);
  }
}
