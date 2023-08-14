import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supergym/controler/publicControler/publicControler.dart';
import 'package:supergym/view/MainPage/MainPage.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Column(
            children: [
              const Text(
                "أدخل كلمة مرور جديدة",
                style: TextStyle(
                    fontFamily: "Segoe",
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              const Text(
                "أدخل كلمة مرور جديدة ، لا تشمل الاسم الأول أو",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFF646464),
                    fontSize: 15),
              ),
              const Text(
                "اسم العائلة",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Color(0xFF646464),
                    fontSize: 15),
              )
            ],
          ),
          Form(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    GetBuilder<publicControler>(
                        init: publicControler(),
                        builder: (controler) {
                          return TextField(
                            obscureText: controler.t,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Row(children: [
                                  controler.t
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Color(0xFF7D7D7D),
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Color(0xFF7D7D7D),
                                        ),
                                ]),
                                onPressed: () {
                                  controler.isShow();
                                  log(controler.t.toString());
                                },
                              ),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color(0xFF7D7D7D),
                              ),
                              hintText: "*************",
                              hintStyle: const TextStyle(
                                  color: Color(0xFF7D7D7D), fontSize: 12),
                              fillColor: const Color(0xFF646464),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          );
                        }),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Color(0xFF7D7D7D),
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Color(0xFF7D7D7D),
                                        ),
                                ]),
                                onPressed: () {
                                  controler.isShow();
                                  log(controler.t.toString());
                                },
                              ),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color(0xFF7D7D7D),
                              ),
                              hintText: "*************",
                              hintStyle: const TextStyle(
                                  color: Color(0xFF7D7D7D), fontSize: 12),
                              fillColor: const Color(0xFF646464),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          );
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              DefultBigButton(
                width: 1.5,
                text: "يؤكد",
                fontWeight: FontWeight.bold,
                ontab: () {
                  Get.offAll(() => MainPage());
                },
                backGroundColor: Color(0xFFE1E002),
                fontfamle: "Segoe",
                fontSize: 18,
              )
            ],
          ))
        ],
      ),
    );
  }
}
