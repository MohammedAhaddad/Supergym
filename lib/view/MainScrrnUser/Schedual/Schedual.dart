import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:supergym/controler/publicControler/publicControler.dart';

class Schedual extends StatelessWidget {
  const Schedual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: ListView(children: [
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
                "جدول التمرين",
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
          padding: const EdgeInsets.all(10),
          child: GetBuilder<publicControler>(
              init: publicControler(),
              builder: (controler) {
                return Column(children: [
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(0);
                    },
                    trailing: controler.expanded
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: const Text(
                      "اليوم الأول: عضلات الصدر والعضلة ثلاثية الرؤوس",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: const [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(1);
                    },
                    trailing: controler.expanded1
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: Text(
                      "اليوم الثاني: عضلات الظهر والبايسبس",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(2);
                    },
                    trailing: controler.expanded2
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: Text(
                      "اليوم الثالث: الساقين والكتفين",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(3);
                    },
                    trailing: controler.expanded3
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: Text(
                      "اليوم الرابع: يوم راحة أو تمارين الكارديو الاختيارية",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(4);
                    },
                    trailing: controler.expanded4
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: Text(
                      "اليوم الخامس: حلبة لكامل الجسم",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(5);
                    },
                    trailing: controler.expanded5
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: Text(
                      "اليوم السادس: القلب والأوعية الدموية",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  ),
                  ExpansionTile(
                    onExpansionChanged: (value) {
                      controler.isExpanded(6);
                    },
                    trailing: controler.expanded6
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFFE1E002),
                          )
                        : const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                    title: Text(
                      "اليوم السابع: يوم الراحة",
                      style: TextStyle(
                          fontFamily: "Segoe",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Divider(
                        color: Color(0xFF7D7D7D),
                      ),
                      ListTile(
                        subtitle: Text(
                            style: TextStyle(
                                fontFamily: "Segoe",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            'اضغط على مقاعد البدلاء الحديد : 3 مجموعات من 8-10 ممثلينتمرين ضغط الدمبل المنحدر: 3 مجموعات من 10-12 ممثلينالدمبل يطير: 3 مجموعات من 12-15 ممثلينتراجع ثلاثي الرؤوس: 3 مجموعات من 10-12 ممثلينتمرين الضغط ثلاثي الرؤوس: 3 مجموعات من 12-15 ممثلينتمديدات الدمبل العلوية: 3 مجموعات من 10-12 ممثلي'),
                      ),
                      Divider(
                        color: Color(0xFF7D7D7D),
                      )
                    ],
                  )
                ]);
              }),
        )
      ]),
    );
  }
}
