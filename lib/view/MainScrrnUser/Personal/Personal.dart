import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

import '../../../controler/publicControler/publicControler.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Stack(children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 18,
                          backgroundColor: const Color(0xFFE1E002),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height / 55,
                          right: MediaQuery.of(context).size.width / 35,
                          left: MediaQuery.of(context).size.width / 35,
                          child: SvgPicture.asset(
                              "assets/Imag/Icon ionic-ios-notifications-outline.svg"),
                        ),
                        Positioned(
                            bottom: MediaQuery.of(context).size.height / 30,
                            right: MediaQuery.of(context).size.width / 50,
                            child: CircleAvatar(
                              backgroundColor: const Color(0xFFFF0000),
                              radius: MediaQuery.of(context).size.width / 60,
                              child: const Text(
                                "3",
                                style: TextStyle(
                                    fontFamily: "Segoe",
                                    fontSize: 9,
                                    color: Colors.white),
                              ),
                            ))
                      ]),
                    ),
                    SvgPicture.asset(
                      "assets/Imag/logo.svg",
                      width: MediaQuery.of(context).size.width / 9,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
          Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "المعلومات الشخصية",
                  style: TextStyle(
                      fontFamily: "Segoe",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE1E002)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/Imag/hh.png")),
                    Text("تغيير الصورة",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            color: Color(0xFFE1E002))),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("يوسف المصري",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.white)),
                  Text("24",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: Colors.white))
                ],
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("تغيير المعلومات الخاصة بي",
                style: TextStyle(
                    fontFamily: "Segoe",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "الاسم",
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
                    hintText: "يوسف المصري",
                    hintStyle:
                        TextStyle(color: Color(0xFF7D7D7D), fontSize: 12),
                    fillColor: Color(0xFF646464),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Text(
                  "رقم الجوال",
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
                    hintText: "0597588417",
                    hintStyle:
                        TextStyle(color: Color(0xFF7D7D7D), fontSize: 12),
                    fillColor: Color(0xFF646464),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Text(
                  "تاريخ الميلاد",
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
                    hintText: "25/11/1996",
                    hintStyle:
                        TextStyle(color: Color(0xFF7D7D7D), fontSize: 12),
                    fillColor: Color(0xFF646464),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefultBigButton(
                      width: 2,
                      text: "تعديل",
                      fontWeight: FontWeight.bold,
                      ontab: () {},
                      backGroundColor: Color(0xFFE1E002),
                      fontfamle: "Segoe",
                      fontSize: 18,
                    ),
                  ],
                )
              ],
            )),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("إعادة تعيين كلمة المرور",
                style: TextStyle(
                    fontFamily: "Segoe",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Form(
                child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Text(
                      "كلمة المرور القديمة",
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "كلمة المرور الجديدة",
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefultBigButton(
                      width: 2,
                      text: "يؤكد",
                      fontWeight: FontWeight.bold,
                      ontab: () {},
                      backGroundColor: Color(0xFFE1E002),
                      fontfamle: "Segoe",
                      fontSize: 18,
                    ),
                  ],
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
