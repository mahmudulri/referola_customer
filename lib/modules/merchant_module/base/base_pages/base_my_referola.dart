import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/modules/customer_module/referral%20status/referrals_status.dart';
import 'package:referola_customer/modules/customer_module/rewards/rewards.dart';
import 'package:referola_customer/modules/customer_module/saved_campaign/saved_campaign.dart';
import 'package:referola_customer/widgets/category_button.dart';

import '../../approvals.dart';
import '../../report.dart';

class BaseMyReferola extends StatefulWidget {
  BaseMyReferola({super.key});

  @override
  State<BaseMyReferola> createState() => _BaseMyReferolaState();
}

class _BaseMyReferolaState extends State<BaseMyReferola> {
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
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Report());
                    },
                    child: referolaBox(
                      imageUrl: "assets/icons/report_analysis.png",
                      btnName: "Reports\n& Analysis",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Approvals());
                    },
                    child: referolaBox(
                      imageUrl: "assets/icons/approvals.png",
                      btnName: "Approvals",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ReferralStatus());
                    },
                    child: referolaBox(
                      imageUrl: "assets/icons/communications.png",
                      btnName: "Communication",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  referolaBox(
                    imageUrl: "assets/icons/settings.png",
                    btnName: "Settings",
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
                    imageUrl: "assets/icons/barcode.png",
                    btnName: "Barcode\nScanner",
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
            color: Colors.grey.withOpacity(0.09),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 2,
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
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
              flex: 2,
              child: Text(btnName),
            ),
          ],
        ),
      ),
    );
  }
}
