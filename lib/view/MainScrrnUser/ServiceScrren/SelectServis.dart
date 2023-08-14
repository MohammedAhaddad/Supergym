import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectServis extends StatelessWidget {
  const SelectServis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: ListView(physics: BouncingScrollPhysics(), children: [
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "كمال أجسام",
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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/Imag/Rectangle 41.png"))),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Segoe",
                          fontSize: 9),
                      "مال الأجسام هو شكل متخصص من اللياقة البدنية يركز على بناء ونحت كتلةالعضلات. يتضمن تدريبًا مكثفًا على المقاومة جنبًا إلى جنب مع نظام غذائي صارم ومنظم. يسعى لاعبو كمال الأجسام إلى تطوير لياقتهم البدنية إلى أقصى إمكاناتها ،مع التركيز على حجم العضلات والتماثل والتعريف. يتطلب هذا الانضباط الصعب الالتزام والتفاني والاتساق في كل من التدريب والتغذية. يتبع لاعبو كمال الأجسام عادةً إجراءات تمرين مصممة بعناية تستهدف مجموعات عضلية محددة ، وتتضمن تمارين وتقنيات مختلفة لتحفيز نمو العضلات وقوتها. كما أنهم يراقبون نظامهم الغذائي عن كثب ، ويستهلكون كمية عالية من البروتين لدعم إصلاح العضلات ونموها ، إلى جانب كميات دقيقة من الكربوهيدرات والدهون. لا ينمي كمال الأجسام بنية بدنية قوية ومثيرة للإعجاب فحسب ، بل يعزز أيضًا الانضباط والمثابرة والمرونة العقلية. إنها رياضة تتحدى الأفراد لتجاوز حدودهم وتحديد الأهداف والسعي باستمرار للتحسين.الأهداف والسعي باستمرار للتحسين.الأهداف والسعي باستمرار للتحسين."))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Segoe",
                          fontSize: 9),
                      "رفع الأثقال: التمارين التي تستهدف مجموعات عضلية معينة وتتضمن رفع الأثقال ، مثل تمرين ضغط البنش أو القرفصاء أو الرفعة المميتة."))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Segoe",
                          fontSize: 9),
                      "تمارين العزل: تمارين تستهدف عضلات معينة وتساعد على زيادة حجم العضلات وتعريفها ، مثل تمارين العضلة ذات الرأسين أو تمارين رفع ربلة الساق."))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Segoe",
                          fontSize: 9),
                      "المكملات الغذائية: العناصر الغذائية الإضافية أو المكملات المستخدمة للمساعدة في نمو العضلات وتعافيها ، مثل مساحيق البروتين أو الكرياتين."))
            ],
          ),
        )
      ]),
    );
  }
}
