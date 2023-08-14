import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:supergym/view/Auth/Login/Login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  fun2() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => Login());
  }

  @override
  Widget build(BuildContext context) {
    fun2();
    return Scaffold(
        backgroundColor: Color(0xFF212121),
        body: Center(
          child: SvgPicture.asset("assets/Imag/logo.svg"),
        ));
  }
}
