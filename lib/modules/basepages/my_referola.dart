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
                  referolaBox(
                    imageUrl: "assets/icons/save_campaign.png",
                    btnName: "Save Campaign",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  referolaBox(
                    imageUrl: "assets/icons/rewards.png",
                    btnName: "Rewards",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  referolaBox(
                    imageUrl: "assets/icons/referal_stats.png",
                    btnName: "Referals Stats",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  referolaBox(
                    imageUrl: "assets/icons/notifications.png",
                    btnName: "Notifications",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  referolaBox(
                    imageUrl: "assets/icons/settings.png",
                    btnName: "Settings",
                  ),
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
  String imageUrl;
  String btnName;
  referolaBox({
    super.key,
    required this.imageUrl,
    required this.btnName,
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
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(btnName),
            ),
          ],
        ),
      ),
    );
  }
}
