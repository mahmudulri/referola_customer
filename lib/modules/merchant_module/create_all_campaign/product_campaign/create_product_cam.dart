import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/modules/customer_module/referral%20status/referrals_status.dart';
import 'package:referola_customer/modules/customer_module/rewards/rewards.dart';
import 'package:referola_customer/modules/customer_module/saved_campaign/saved_campaign.dart';
import 'package:referola_customer/modules/merchant_module/base/base_merchant.dart';
import 'package:referola_customer/modules/merchant_module/register_pages/contact.dart';
import 'package:referola_customer/modules/merchant_module/register_pages/done.dart';
import 'package:referola_customer/modules/merchant_module/register_pages/profile.dart';
import 'package:referola_customer/modules/merchant_module/register_pages/verify.dart';
import 'package:referola_customer/widgets/category_button.dart';

import '../product_pages/business_info.dart';
import '../product_pages/details.dart';
import '../product_pages/preview.dart';
import '../product_pages/rewards.dart';
import 'payment.dart';

class CreateProductCampaign extends StatefulWidget {
  CreateProductCampaign({super.key});

  @override
  State<CreateProductCampaign> createState() => _CreateProductCampaignState();
}

class _CreateProductCampaignState extends State<CreateProductCampaign> {
  CategoryButtonController categoryButtonController =
      Get.put(CategoryButtonController());

  List pagelist = [
    ProductDetails(),
    ProductRewards(),
    BusinessInfo(),
    PreviewProduct(),
  ];

  int number = 0;
  int pageNumber = 1;

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    int myIndex = 1;
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
                height: screenHeight * 0.045,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Campaign for selling\nProduct or Service",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.045,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.09),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 65,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            // color: Colors.yellow,
                            ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/profile.png",
                                    width: 25,
                                    height: 30,
                                  ),
                                  Text("1.Details"),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/contact.png",
                                    width: 25,
                                    height: 30,
                                  ),
                                  Text("2.Rewards"),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/verify.png",
                                    width: 25,
                                    height: 30,
                                  ),
                                  Text("3.Bus Info"),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/done.png",
                                    width: 25,
                                    height: 30,
                                  ),
                                  Text("4.Preview"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: number == 0 ||
                                        number == 1 ||
                                        number == 2 ||
                                        number == 3
                                    ? Colors.black.withOpacity(0.5)
                                    : Colors.grey.withOpacity(0.2),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: number == 1 || number == 2 || number == 3
                                    ? Colors.black.withOpacity(0.5)
                                    : Colors.grey.withOpacity(0.2),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: number == 2 || number == 3
                                    ? Colors.black.withOpacity(0.5)
                                    : Colors.grey.withOpacity(0.2),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: number == 3
                                    ? Colors.black.withOpacity(0.5)
                                    : Colors.grey.withOpacity(0.2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: pagelist[number],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey
                            .withOpacity(0.09), // Color of the shadow
                        offset: Offset(0, 4), // Offset of the shadow (x, y)
                        blurRadius: 4, // Blur radius of the shadow
                        spreadRadius: 2, // Spread radius of the shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (number == 0) {
                                print("end");
                              } else {
                                number--;
                                pageNumber--;
                              }
                            });
                          },
                          child: Visibility(
                            visible: number == 0 ? false : true,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  )),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                child: Text("Back"),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              setState(() {
                                if (number == 3) {
                                  print("endddddddddd");
                                  Get.to(() => PaymentforProductCampaign());
                                } else {
                                  number++;
                                  pageNumber++;
                                  print(number);
                                }
                              });
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff38A700),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
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
            ],
          ),
        ),
      ),
    ));
  }
}
