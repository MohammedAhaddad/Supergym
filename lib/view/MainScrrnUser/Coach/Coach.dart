import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

class MyCoach extends StatelessWidget {
  const MyCoach({Key? key}) : super(key: key);

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
        Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مدربي",
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
            const CircleAvatar(
                radius: 40, backgroundImage: AssetImage("assets/Imag/hh.png")),
            SizedBox(
              width: MediaQuery.of(context).size.width / 50,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("المدرب محمد مدحت",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        color: Colors.white)),
                Text("مدرب كمال أجسام",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        color: Colors.white))
              ],
            )
          ]),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("خبرة مدربي",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE1E002),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe",
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "عشر سنوات من الخبرة في الصالة الرياضية تحقيق الإنجازات الدولية",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            " في العراق 2010حصل على 6 ميداليات برونزية في البطولة العربية",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "شارك في دورة الألعاب العربية بدولة قطر عام 2013",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "المشاركة في دورة الألعاب الآسيوية بكوريا الجنوبية 2014",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "حصل على ميدالية برونزية عام 2018 ، والثالثة في غرب آسيا في البحرين",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("فاز بالمركز الأول على فلسطين في 7 بطولات",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                            "حاصل على رخصة تدريب كمال الأجسام واللياقة البدنية مدرب فريق القوة البدنية بالجامعة الإسلامية",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFFFFF),
                                fontFamily: "Segoe")))
                  ],
                )
              ]),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              DefultBigButton(
                width: 1.9,
                backGroundColor: const Color(0xFFE1E002),
                ontab: () {},
                text: "للتواصل مع المدرب",
                fontSize: 15,
                fontcolor: const Color(0xFF000000),
                fontWeight: FontWeight.bold,
                fontfamle: "Segoe",
              )
            ],
          ),
        )
      ]),
    );
  }
}
