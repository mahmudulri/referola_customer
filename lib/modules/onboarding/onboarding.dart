import 'package:carousel_slider/carousel_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/user_type/user_type.dart';
import 'package:referola_customer/routes/app_routes.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});

  final _controller = PageController();

  int activeIndex = 0;
  final controller = CarouselController();

  final urlImages = [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xffF9F8F6),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF9F8F6),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset("assets/logo/referola.png"),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  // color: Colors.green,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.020,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.400,
                              child: PageView(
                                physics: BouncingScrollPhysics(),
                                controller: _controller,
                                children: [
                                  Image.asset(
                                    "assets/images/onboarding-1.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    "assets/images/onboarding-2.png",
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    "assets/images/onboarding-3.png",
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Save, Refer & Earn",
                              style: TextStyle(
                                fontSize: screenWidth * 0.060,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SmoothPageIndicator(
                              controller: _controller,
                              count: 3,
                              effect: ExpandingDotsEffect(
                                dotHeight: 15,
                                radius: 12,
                                dotColor: Colors.black.withOpacity(0.5),
                                activeDotColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.20),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => UserType());
                  },
                  child: Container(
                    height: screenHeight * 0.065,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Color(0xff5BB62E),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ",
                      style: TextStyle(
                        fontSize: screenWidth * 0.040,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "/ Login",
                      style: TextStyle(
                        fontSize: screenWidth * 0.040,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: screenWidth,
      child: Center(
        child: Text("Page 1"),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: screenWidth,
      child: Center(
        child: Text("Page 2"),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: screenWidth,
      child: Center(
        child: Text("Page 3"),
      ),
    );
  }
}
