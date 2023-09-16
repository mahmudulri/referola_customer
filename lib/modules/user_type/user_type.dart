import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/sign_up/sign_up_screen.dart';

class UserType extends StatefulWidget {
  UserType({super.key});

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
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
                      Padding(
                        padding: EdgeInsets.only(bottom: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffBBBCBC).withOpacity(0.09),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(400),
                              bottomRight: Radius.circular(500),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: Text(
                          "I am a",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  color: Color(0xffFCFDFF),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print(isButton1Active);
                              print(isButton2Active);
                              // isButton1Active = !isButton1Active;
                              isButton1Active = true;
                              isButton2Active = false;
                            });
                          },
                          child: Container(
                            height: screenHeight * 0.075,
                            width: screenWidth,
                            decoration: BoxDecoration(
                              color: isButton1Active == false
                                  ? Colors.white
                                  : Color(0xff38A700),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image.asset(
                                      "assets/icons/business_owner.png",
                                      color: isButton1Active == true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Business Owner",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: isButton1Active == true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print(isButton1Active);
                              print(isButton2Active);
                              isButton1Active = false;
                              isButton2Active = true;
                            });
                          },
                          child: Container(
                            height: screenHeight * 0.075,
                            width: screenWidth,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: isButton2Active == true
                                  ? Color(0xff38A700)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Image.asset(
                                      "assets/icons/customer.png",
                                      color: isButton2Active == true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Customer/Affiliate",
                                    style: TextStyle(
                                      color: isButton2Active == true
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: Container(
                        height: screenHeight * 0.060,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: Color(0xff38A700),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
