import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supergym/moodle/Locale/locale.dart';
import 'package:supergym/view/Splash/Splash.dart';

import 'controler/LocaleConatroler/LocaleControler.dart';

SharedPreferences? sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleControler localeControler = Get.put(LocaleControler());
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        locale: localeControler.intialLand,
        translations: MyLocale(),
        home: Splash());
  }
}
