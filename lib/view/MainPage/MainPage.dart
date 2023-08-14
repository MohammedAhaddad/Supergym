import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:supergym/controler/publicControler/publicControler.dart';
import 'package:supergym/view/MainScrrnUser/Home/Home.dart';
import 'package:supergym/view/MainScrrnUser/MemberShip.dart/MemberShip.dart';
import 'package:supergym/view/MainScrrnUser/Messages/Messages%20.dart';
import 'package:supergym/view/MainScrrnUser/Profile/Profile.dart';
import 'package:supergym/view/MainScrrnUser/ServiceScrren/Service.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<publicControler>(
        init: publicControler(),
        builder: (controlr) {
          return Scaffold(
            bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: const Color(0xFFE1E002),
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  // primaryColor: Colors.red,
                  // textTheme: Theme.of(context).textTheme.copyWith(
                  //     caption: const TextStyle(
                  //         color: Colors
                  //             .yellow))
                ), // sets the inactive color of the `BottomNavigationBar`
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.black,
                  selectedLabelStyle: const TextStyle(
                      fontFamily: "Segoe",
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  currentIndex: controlr.index,
                  onTap: (v) {
                    controlr.pageController.jumpToPage(controlr.pagRout(v));
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon:
                          SvgPicture.asset("assets/Imag/Icon feather-home.svg"),
                      label: "الرئيسية",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                          "assets/Imag/customer-service-headphones-svgrepo-com.svg"),
                      label: "الخدمات",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                          "assets/Imag/Icon material-card-membership.svg"),
                      label: "العضوية",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset("assets/Imag/aa.svg"),
                      label: "الرسائل",
                    ),
                    BottomNavigationBarItem(
                      icon:
                          SvgPicture.asset("assets/Imag/Icon feather-user.svg"),
                      label: "الملف الشخصي",
                    ),
                  ],
                )),
            body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controlr.pageController,
                children: const [
                  Home(),
                  Service(),
                  MemberShip(),
                  Messages(),
                  Profile()
                ]),
          );
        });
  }
}
