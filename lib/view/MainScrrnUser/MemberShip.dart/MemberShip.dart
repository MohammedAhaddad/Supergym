import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

class MemberShip extends StatelessWidget {
  const MemberShip({Key? key}) : super(key: key);

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
                    "الـعـضـويــة",
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
              padding: EdgeInsets.all(15),
              child: Text("أوقات العمل",
                  style: TextStyle(
                      fontFamily: "Segoe",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/Imag/Schedule.png"))),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("تدريبي الخاص",
                  style: TextStyle(
                      fontFamily: "Segoe",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Segoe",
                              fontSize: 9),
                          "يحمل التدريب الشخصي في صالة الألعاب الرياضية أهمية كبيرة في تحقيق أهداف الصحة واللياقة البدنية. يسمح التدريب الخاص بخطة مخصصة مصممة لكل فرد ، مع التركيز على احتياجاتهم الشخصية وأهدافهم المحددة. يوفر المدرب الشخصي الاهتمام الفردي والمراقبة المستمرة ، مما يساعد في تحقيق نتائج أفضل ويعزز الحافز والالتزام. من خلال التوجيه الشخصي والدعم المستمر ، يمكن للأفراد الاستفادة من التوجيه المهني والتصحيحات الفنية أثناء التمارين ، جنبًا إلى جنب مع المشورة بشأن التغذية والرفاهية العامة. إن وجود مدرب شخصي يعزز الثقة بالنفس ويساعد الأفراد على التغلب على التحديات مع الاستمرار في نموهم البدني. بشكل عام ، يعد التدريب الخاص في صالة الألعاب الرياضية أداة فعالة لتعزيز النتائج وتحقيق النجاح الرياضي"))
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    DefultBigButton(
                      height: 40,
                      width: 2.5,
                      text: "قم بإنشاء تدريبك الخاص",
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      fontcolor: Colors.black,
                      fontfamle: "Segoe",
                      ontab: () {},
                      backGroundColor: Color(0xFFE1E002),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("التسعيرة",
                  style: TextStyle(
                      fontFamily: "Segoe",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Container(
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return InkWell(
                        onTap: () {},
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
                                      color: Color(0xFFE1E002),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  //  color: Colors.white,
                                  child: Column(children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width /
                                              40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("40 / Months",
                                            style: TextStyle(
                                                fontFamily: "Segoe",
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black))
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width /
                                              40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("6 أيام في الأسبوع",
                                            style: TextStyle(
                                                fontFamily: "Segoe",
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                        Container(
                                          margin: EdgeInsets.all(7),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              35,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              250,
                                          decoration: BoxDecoration(
                                              color: Colors.black),
                                        ),
                                        Text("تخصيص مدرب مخصص",
                                            style: TextStyle(
                                                fontFamily: "Segoe",
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                        Container(
                                          margin: EdgeInsets.all(7),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              35,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              250,
                                          decoration: BoxDecoration(
                                              color: Colors.black),
                                        ),
                                        Text("دفعات الصباح والمساء",
                                            style: TextStyle(
                                                fontFamily: "Segoe",
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black))
                                      ],
                                    )
                                  ]),
                                )
                              ]),
                        ));
                  })),
            )
          ],
        ));
  }
}
