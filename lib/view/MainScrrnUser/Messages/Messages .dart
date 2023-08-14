import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

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
                    "الــرســائــل",
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
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Search",
                  hintStyle:
                      const TextStyle(color: Color(0xFF7D7D7D), fontSize: 16),
                  fillColor: const Color(0xFF646464),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                  itemCount: 20,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFE1E002)),
                      child: Slidable(
                        endActionPane:
                            ActionPane(motion: BehindMotion(), children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.11,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFB4B301)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/Imag/delete_outline.svg"),
                                Text("Delete")
                              ],
                            ),
                          )
                          // SlidableAction(
                          //     flex: 20,
                          //     onPressed: (v) {},
                          //     backgroundColor: Color(0xFFB4B301),
                          //     icon: Icons.delete,
                          //     borderRadius: BorderRadius.circular(15))
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(children: [
                                const CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage("assets/Imag/hh.png")),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 50,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("يوسف المصري",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            color: Color(0xFF000000))),
                                    Text("+924048573",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12,
                                            color: Color(0xFF000000)))
                                  ],
                                )
                              ]),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width:
                                      MediaQuery.of(context).size.width / 150,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/Imag/Icon feather-phone2.svg",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/Imag/Icon feather-message-circle.svg",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),

                        // child: Container(

                        //   child:      ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
