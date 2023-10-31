import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/modules/customer_module/rewards/rewards.dart';
import 'package:referola_customer/modules/customer_module/saved_campaign/saved_campaign.dart';
import 'package:referola_customer/widgets/category_button.dart';

class ReferralStatus extends StatefulWidget {
  ReferralStatus({super.key});

  @override
  State<ReferralStatus> createState() => _ReferralStatusState();
}

class _ReferralStatusState extends State<ReferralStatus> {
  CategoryButtonController categoryButtonController =
      Get.put(CategoryButtonController());

  List catType = [
    "All",
    "Campaign",
    "Surveys",
    "Videos",
  ];

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
                height: 25,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Referral Status",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.045,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  referolaBox(
                    boxName: 'Referrals\nSent',
                    count: 20,
                  ),
                  referolaBox(
                    boxName: 'Pending\nVerification',
                    count: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  referolaBox(
                    boxName: 'Paid',
                    count: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Referrals Sent",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 40,
                width: screenWidth,
                // color: Colors.cyan,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: catType.length,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Container(
                      decoration: BoxDecoration(
                        color: index == 0
                            ? Color(0xff38A700).withOpacity(0.20)
                            : Color(0xffBBBCBC).withOpacity(0.20),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Text(
                          catType[index],
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ),
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class referolaBox extends StatelessWidget {
  String boxName;
  int count;
  referolaBox({
    required this.boxName,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.160,
      width: screenWidth * 0.42,
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              boxName,
              style: TextStyle(
                fontSize: screenWidth * 0.045,
              ),
            ),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: screenWidth * 0.045,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
