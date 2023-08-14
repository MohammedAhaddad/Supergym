import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:supergym/controler/publicControler/publicControler.dart';
import 'package:supergym/view/Auth/ForgetPassword/ForgetPassword/ForgetPassword.dart';
import 'package:supergym/view/MainPage/MainPage.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

import '../../../controler/LocaleConatroler/LocaleControler.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF212121),
              radius: MediaQuery.of(context).size.width / 4,
              child: SvgPicture.asset(
                "assets/Imag/logo.svg",
              ),
            ),
            Text(
              "تسجيل الدخول",
              style: TextStyle(
                  fontFamily: "Segoe", color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Text(
              "مكنك الحصول على المعرف وكلمة المرور\n.عند الاشتراك في صالة الألعاب الرياضية",
              style: TextStyle(
                  fontFamily: "Segoe", color: Color(0xFF9B9B9B), fontSize: 12),
            ),
            Form(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "بطاقة تعريف   ",
                        style: TextStyle(
                            fontFamily: "Segoe",
                            color: Color(0xFF9B9B9B),
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "857495",
                          hintStyle:
                              TextStyle(color: Color(0xFF7D7D7D), fontSize: 12),
                          fillColor: Color(0xFF646464),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "كلمة المرور   ",
                        style: TextStyle(
                            fontFamily: "Segoe",
                            color: Color(0xFF9B9B9B),
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      GetBuilder<publicControler>(
                          init: publicControler(),
                          builder: (controler) {
                            return TextField(
                              obscureText: controler.t,
                              decoration: InputDecoration(
                                // helperText: "knjkbjg h",
                                // helperStyle: TextStyle(color: Colors.white),
                                suffixIcon: IconButton(
                                  icon: Row(children: [
                                    controler.t
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Color(0xFF7D7D7D),
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color: Color(0xFF7D7D7D),
                                          ),
                                  ]),
                                  onPressed: () {
                                    controler.isShow();
                                    log(controler.t.toString());
                                  },
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xFF7D7D7D),
                                ),
                                hintText: "*************",
                                hintStyle: TextStyle(
                                    color: Color(0xFF7D7D7D), fontSize: 12),
                                fillColor: Color(0xFF646464),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              side: BorderSide(color: Colors.white),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: F,
                              onChanged: (v) {},
                              focusColor: Colors.white),
                          Text("تذكرني",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: "Poppins",
                                  fontSize: 8))
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() => ForgetPassword());
                          },
                          child: Text(
                            "نسيت كلمة المرور ؟",
                            style: TextStyle(
                                color: Color(0xFFE1E002),
                                fontFamily: "Segoe",
                                fontSize: 8),
                          ))
                    ],
                  ),
                ),
                DefultBigButton(
                  width: 1.5,
                  text: "تسجيل الدخول",
                  ontab: () {
                    Get.off(() => MainPage());
                  },
                  backGroundColor: Color(0xFFE1E002),
                  fontfamle: "Poppins",
                  fontSize: 18,
                )
              ],
            ))
          ],
        ),
      ]),
    );
  }
}
