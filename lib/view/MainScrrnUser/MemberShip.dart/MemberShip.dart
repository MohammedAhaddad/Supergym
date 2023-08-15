import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:supergym/controler/publicControler/publicControler.dart';
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
                      ontab: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Color(0xFF373737),
                                actions: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height /
                                        1.6,
                                    color: Color(0xFF373737),
                                    child: ListView(children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "أنشئ تدريبي الخاص",
                                            style: TextStyle(
                                                color: Color(0xFFE1E002),
                                                fontFamily: "Segoe",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "مستوى اللياقة البدنية",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Segoe",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      GetBuilder<publicControler>(
                                          init: publicControler(),
                                          builder: (controler) {
                                            return Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Radio(
                                                      value: 'high',
                                                      groupValue: controler
                                                          .selectedOption,
                                                      onChanged: (v) {
                                                        controler.isSelect(v);
                                                      },
                                                      fillColor:
                                                          MaterialStateProperty
                                                              .all<Color>(Color(
                                                                  0xFFE1E002)),
                                                    ),
                                                    Text(
                                                      "عالي",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Radio(
                                                      value: 'middle',
                                                      groupValue: controler
                                                          .selectedOption,
                                                      onChanged: (v) {
                                                        controler.isSelect(v);
                                                      },
                                                      fillColor:
                                                          MaterialStateProperty
                                                              .all<Color>(Color(
                                                                  0xFFE1E002)),
                                                    ),
                                                    Text(
                                                      "متوسط",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Radio(
                                                      value: 'low',
                                                      groupValue: controler
                                                          .selectedOption,
                                                      onChanged: (v) {
                                                        controler.isSelect(v);
                                                      },
                                                      fillColor:
                                                          MaterialStateProperty
                                                              .all<Color>(Color(
                                                                  0xFFE1E002)),
                                                    ),
                                                    Text(
                                                      "منخفض",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            );
                                          }),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                40,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "الوزن",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Segoe",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              40,
                                                    ),
                                                    Text(
                                                      "الوزن الحالي",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      20,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "95 KG",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xFF7D7D7D),
                                                          fontSize: 12),
                                                      fillColor:
                                                          Color(0xFF646464),
                                                      filled: true,
                                                      border: OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: CircleAvatar(
                                                radius: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    25,
                                                backgroundColor:
                                                    Color(0xFFE1E002),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Color(0xFF373737),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              30,
                                                    ),
                                                    Text(
                                                      "الوزن المطلوب",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      20,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "60 KG",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xFF7D7D7D),
                                                          fontSize: 12),
                                                      fillColor:
                                                          Color(0xFF646464),
                                                      filled: true,
                                                      border: OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "الوقت",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Segoe",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              30,
                                                    ),
                                                    Text(
                                                      "يبدأ",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      20,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "8:00",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xFF7D7D7D),
                                                          fontSize: 12),
                                                      fillColor:
                                                          Color(0xFF646464),
                                                      filled: true,
                                                      border: OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: CircleAvatar(
                                                radius: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    25,
                                                backgroundColor:
                                                    Color(0xFFE1E002),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Color(0xFF373737),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              30,
                                                    ),
                                                    Text(
                                                      "ينتهي",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Segoe",
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      20,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      4,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "11:00",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Color(0xFF7D7D7D),
                                                          fontSize: 12),
                                                      fillColor:
                                                          Color(0xFF646464),
                                                      filled: true,
                                                      border: OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(13),
                                        child: Row(
                                          children: [
                                            DefultBigButton(
                                              height: 40,
                                              width: 3.5,
                                              backGroundColor:
                                                  Color(0xFFE1E002),
                                              ontab: () {},
                                              text: "إنشاء",
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              fontcolor: Colors.black,
                                              fontfamle: "Segoe",
                                            )
                                          ],
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              );

                              // );
                            });
                      },
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
