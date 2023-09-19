import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/widgets/category_button.dart';

class MyReferola extends StatefulWidget {
  MyReferola({super.key});

  @override
  State<MyReferola> createState() => _MyReferolaState();
}

class _MyReferolaState extends State<MyReferola> {
  bool isProductActive = true;
  bool isFlyerActive = false;
  bool isVideoActive = false;
  bool isSurveyActive = false;
  bool isJobsActive = false;

  List catType = [
    "Recommended",
    "Popular",
    "Resturants",
    "Hotel",
  ];

  CategoryButtonController categoryButtonController =
      Get.put(CategoryButtonController());

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xffF4F6F5),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffFAFCFB),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/back.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.050,
              ),
              Row(
                children: [
                  Text(
                    "My Referola",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.055,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  referolaBox(),
                  SizedBox(
                    width: 10,
                  ),
                  referolaBox(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  referolaBox(),
                  SizedBox(
                    width: 10,
                  ),
                  referolaBox(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  referolaBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class referolaBox extends StatelessWidget {
  const referolaBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.160,
      width: screenHeight * 0.160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.09), // Color of the shadow
            offset: Offset(0, 4), // Offset of the shadow (x, y)
            blurRadius: 4, // Blur radius of the shadow
            spreadRadius: 2, // Spread radius of the shadow
          ),
        ],
      ),
    );
  }
}
