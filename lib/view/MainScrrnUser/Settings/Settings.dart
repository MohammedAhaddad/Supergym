import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF212121),
        body: ListView(
          physics: const BouncingScrollPhysics(),
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
                    "الإعدادات",
                    style: TextStyle(
                        fontFamily: "Segoe",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE1E002)),
                  ),
                ],
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.all(15),
            //   child: Row(children: [
            //     const CircleAvatar(
            //         radius: 40,
            //         backgroundImage: AssetImage("assets/Imag/hh.png")),
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width / 50,
            //     ),
            //     const Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text("يوسف المصري",
            //             style: TextStyle(
            //                 fontFamily: "Poppins",
            //                 fontSize: 16,
            //                 color: Colors.white)),
            //         Text("+924048573",
            //             style: TextStyle(
            //                 fontFamily: "Poppins",
            //                 fontSize: 12,
            //                 color: Colors.white))
            //       ],
            //     )
            //   ]),
            // ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          "assets/Imag/Icon material-language.svg"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Text("معلومات شخصية",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          "assets/Imag/Icon ionic-ios-help-circle-outline.svg"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Text("حول",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Imag/Icon feather-shield.svg"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Text("سياسة الخصوصية",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Imag/Icon feather-phone3.svg"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Text("اتصل بنا",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          "assets/Imag/Icon feather-message-circle2.svg"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Text("دردش معنا",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/Imag/Icon feather-log-out.svg"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 35,
                      ),
                      Text("تسجيل الخروج",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Color(0xFFFF0000)))
                    ],
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
