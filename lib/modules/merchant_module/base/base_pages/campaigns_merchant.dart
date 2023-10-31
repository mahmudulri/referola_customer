import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/modules/customer_module/homecategories/flyers.dart';
import 'package:referola_customer/modules/customer_module/homecategories/jobs.dart';
import 'package:referola_customer/modules/customer_module/homecategories/product_service.dart';
import 'package:referola_customer/modules/customer_module/homecategories/survey.dart';
import 'package:referola_customer/modules/customer_module/homecategories/videos.dart';
import 'package:referola_customer/modules/merchant_module/create_all_campaign/product_campaign/create_campaign.dart';
import 'package:referola_customer/widgets/category_button.dart';

class CampaignsMerchant extends StatefulWidget {
  CampaignsMerchant({super.key});

  @override
  State<CampaignsMerchant> createState() => _CampaignsMerchantState();
}

class _CampaignsMerchantState extends State<CampaignsMerchant> {
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

  List homeCategories = [
    Product_service(),
    Flyers(),
    Videos(),
    Survey(),
    Jobs(),
  ];

  int selectedIndex = 0;

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
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Campaigns",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.045,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => CreateCampaign());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text("Create New"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                        isProductActive = true;
                        isFlyerActive = false;
                        isVideoActive = false;
                        isSurveyActive = false;
                        isJobsActive = false;
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 65,
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
                        borderRadius: BorderRadius.circular(10),
                        color:
                            isProductActive ? Color(0xff00AC00) : Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            isProductActive
                                ? Image.asset(
                                    "assets/icons/product-select.png",
                                    height: 40,
                                    width: 40,
                                  )
                                : Image.asset(
                                    "assets/icons/product-noselect.png",
                                    height: 40,
                                    width: 40,
                                  ),
                            Text(
                              "product",
                              style: TextStyle(
                                fontSize: screenWidth * 0.025,
                                color: isProductActive
                                    ? Colors.white
                                    : Color(0xff333333).withOpacity(0.87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                        isProductActive = false;
                        isFlyerActive = true;
                        isVideoActive = false;
                        isSurveyActive = false;
                        isJobsActive = false;
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 65,
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
                        borderRadius: BorderRadius.circular(10),
                        color: isFlyerActive ? Color(0xff00AC00) : Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            isFlyerActive
                                ? Image.asset(
                                    "assets/icons/flyer-select.png",
                                    height: 40,
                                    width: 40,
                                  )
                                : Image.asset(
                                    "assets/icons/flyer-noselect.png",
                                    height: 40,
                                    width: 40,
                                  ),
                            Text(
                              "Flyer",
                              style: TextStyle(
                                fontSize: screenWidth * 0.025,
                                color: isFlyerActive
                                    ? Colors.white
                                    : Color(0xff333333).withOpacity(0.87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                        isProductActive = false;
                        isFlyerActive = false;
                        isVideoActive = true;
                        isSurveyActive = false;
                        isJobsActive = false;
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 65,
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
                        borderRadius: BorderRadius.circular(10),
                        color: isVideoActive ? Color(0xff00AC00) : Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            isVideoActive
                                ? Image.asset(
                                    "assets/icons/video-select.png",
                                    height: 40,
                                    width: 40,
                                  )
                                : Image.asset(
                                    "assets/icons/video-noselect.png",
                                    height: 40,
                                    width: 40,
                                  ),
                            Text(
                              "Videos",
                              style: TextStyle(
                                fontSize: screenWidth * 0.025,
                                color: isVideoActive
                                    ? Colors.white
                                    : Color(0xff333333).withOpacity(0.87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 3;
                        isProductActive = false;
                        isFlyerActive = false;
                        isVideoActive = false;
                        isSurveyActive = true;
                        isJobsActive = false;
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 65,
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
                        borderRadius: BorderRadius.circular(10),
                        color:
                            isSurveyActive ? Color(0xff00AC00) : Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            isSurveyActive
                                ? Image.asset(
                                    "assets/icons/survey-select.png",
                                    height: 40,
                                    width: 40,
                                  )
                                : Image.asset(
                                    "assets/icons/survey-noselect.png",
                                    height: 40,
                                    width: 40,
                                  ),
                            Text(
                              "Survey",
                              style: TextStyle(
                                fontSize: screenWidth * 0.025,
                                color: isSurveyActive
                                    ? Colors.white
                                    : Color(0xff333333).withOpacity(0.87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 4;
                        isProductActive = false;
                        isFlyerActive = false;
                        isVideoActive = false;
                        isSurveyActive = false;
                        isJobsActive = true;
                      });
                    },
                    child: Container(
                      height: 75,
                      width: 65,
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
                        borderRadius: BorderRadius.circular(10),
                        color: isJobsActive ? Color(0xff00AC00) : Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            isJobsActive
                                ? Image.asset(
                                    "assets/icons/job-select.png",
                                    height: 40,
                                    width: 40,
                                  )
                                : Image.asset(
                                    "assets/icons/job-noselect.png",
                                    height: 40,
                                    width: 40,
                                  ),
                            Text(
                              "Jobs",
                              style: TextStyle(
                                fontSize: screenWidth * 0.025,
                                color: isJobsActive
                                    ? Colors.white
                                    : Color(0xff333333).withOpacity(0.87),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
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
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          catType[index],
                          style: TextStyle(
                            fontSize: screenWidth * 0.040,
                          ),
                        ),
                      ),
                    ));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: homeCategories[selectedIndex],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CategoryButton extends StatelessWidget {
  int? myIndex;
  CategoryButton({super.key, this.myIndex});

  CategoryButtonController controller = Get.put(CategoryButtonController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: myIndex == 0 ? Color(0xff00AC00) : Colors.red,
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/icons/product-select.png",
            height: 40,
            width: 40,
          ),
          Text(
            "product",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
