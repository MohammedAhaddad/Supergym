import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:supergym/view/Auth/ForgetPassword/Verification/Verification.dart';
import 'package:supergym/view/MyBottm/MyButton.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: ListView(children: [
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
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.call,
                      color: Color(0xFF7D7D7D),
                    ),
                    hintText: "رقم تليفونك",
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
                DefultBigButton(
                  width: 1.5,
                  text: "أرسل الرمز",
                  ontab: () {
                    Get.to(() => Verification());
                  },
                  fontWeight: FontWeight.bold,
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
