import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
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
        Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Stack(children: [
                            Image.asset(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                                "assets/Imag/Rectangle 23.png"),
                            Positioned(
                              left: MediaQuery.of(context).size.width / 5,
                              top: MediaQuery.of(context).size.height / 50,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("أفضل صالة ألعاب رياضية في قطاع غزة",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Segoe")),
                                  Text("للرجال والنساء",
                                      style: TextStyle(
                                          color: Color(0xFFE1E002),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Segoe"))
                                ],
                              ),
                            )
                          ]),
                        )
                      ]),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "المــدربـيـيـــن",
              style: TextStyle(
                  fontFamily: "Segoe",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE1E002)),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.6,
          width: MediaQuery.of(context).size.width / 10,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Imag/Rectangle 34.png"))),
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
                            height: MediaQuery.of(context).size.height / 12,
                            //  color: Colors.white,

                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("محمود خالد",
                                    style: TextStyle(
                                        fontFamily: "Segoe",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000))),
                                Text("35 سنة",
                                    style: TextStyle(
                                        fontFamily: "Segoe",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000))),
                              ],
                            )),
                      ],
                    ));
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 50),
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الــخــدمــات",
                  style: TextStyle(
                      color: Color(0xFFE1E002),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Segoe")),
              Text("مشاهدة الكل",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Segoe")),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.6,
          width: MediaQuery.of(context).size.width / 10,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/Imag/Rectangle 41.png"))),
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
                            height: MediaQuery.of(context).size.height / 12,
                            //  color: Colors.white,

                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("كمال أجسام",
                                    style: TextStyle(
                                        fontFamily: "Segoe",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000))),
                              ],
                            )),
                      ],
                    ));
              }),
        ),
      ]),
    );
  }
}
