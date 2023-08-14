import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:supergym/view/Auth/ForgetPassword/ChangePassword/ChangePassword.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF646464),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Get.back();
                },
              )),
        ),
        Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Text(
            "استعادة حسابك",
            style: TextStyle(
                fontFamily: "Segoe",
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Text(
            "أدخل رقم هاتفك لإرسال رمز التحقق",
            style: TextStyle(
                fontFamily: "Poppins", color: Color(0xFF646464), fontSize: 15),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Pinput(
                  //    autofillHints: ["-"],
                  // mainAxisAlignment: MainAxisAlignment.s,
                  length: 6,
                  // defaultPinTheme: defaultPinTheme,
                  // focusedPinTheme: focusedPinTheme,
                  // submittedPinTheme: submittedPinTheme,

                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                DefultBigButton(
                  width: 1.5,
                  text: "يؤكد",
                  fontWeight: FontWeight.bold,
                  ontab: () {
                    Get.off(() => ChangePassword());
                  },
                  backGroundColor: Color(0xFFE1E002),
                  fontfamle: "Segoe",
                  fontSize: 18,
                )
              ],
            ),
          ),
        ])
      ]),
    );
  }
}
