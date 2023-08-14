import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:supergym/view/MainScrrnUser/ServiceScrren/SelectServis.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

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
                    "الــخــدمــات",
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
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => SelectServis());
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2.5,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/Imag/Rectangle 41.png"))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(100, 247, 247, 250),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  //  color: Colors.white,

                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("كمال أجسام",
                                              style: TextStyle(
                                                  fontFamily: "Segoe",
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF000000))),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            child: Container(
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(7),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    20,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFFE1E002),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15))),
                                                child: Text("المزيد",
                                                    style: TextStyle(
                                                        fontFamily: "Segoe",
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF000000)))),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    );
                  })),
            )
          ],
        ));
  }
}
