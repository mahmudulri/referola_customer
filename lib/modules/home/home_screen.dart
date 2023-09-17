import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/sign_up/sign_up_screen.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isButton1Active = false;
  bool isButton2Active = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffFCFDFF),
          body: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffBBBCBC).withOpacity(0.09),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(400),
                            bottomRight: Radius.circular(500),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 20,
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: screenWidth,
                              // color: Colors.green,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage: AssetImage(
                                          "assets/images/profilepic.png"),
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Welcome",
                                          style: TextStyle(
                                            color: Color(0xff333333)
                                                .withOpacity(0.70),
                                            fontWeight: FontWeight.w500,
                                            fontSize: screenWidth * 0.040,
                                          ),
                                        ),
                                        Text(
                                          "Mahmudul Hasan",
                                          style: TextStyle(
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.w700,
                                            fontSize: screenWidth * 0.040,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.20),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  badges.Badge(
                                    badgeStyle: badges.BadgeStyle(
                                        badgeColor: Color(0xffDFB534)),
                                    badgeContent: Text('3'),
                                    child: Icon(Icons.notifications),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 70,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "Search products, service etc",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.040,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.055,
                                    color: Color(0xff333333).withOpacity(0.87),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 4,
                child: Container(
                  width: screenWidth,
                  // color: Colors.cyan,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
