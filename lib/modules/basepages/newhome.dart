import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/widgets/category_button.dart';

import '../physical_store_campaign/physical_store_campaign_view.dart';

class NewHome extends StatefulWidget {
  NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
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
                height: 15,
              ),
              Container(
                height: screenHeight * 0.070,
                width: screenWidth,
                // color: Colors.green,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/profilepic.png"),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                color: Color(0xff333333).withOpacity(0.70),
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                            Text(
                              "Mahmudul Hasan",
                              style: TextStyle(
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ],
                        ),
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
                      badgeStyle:
                          badges.BadgeStyle(badgeColor: Color(0xffDFB534)),
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
                height: screenHeight * 0.065,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/search_icon.png",
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Search products, service etc",
                        style: TextStyle(
                          color: Color(0xff919191),
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
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.035,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
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
                              "Survey",
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
                  child: ListView.separated(
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => CampaignDetails());
                    },
                    child: Container(
                      height: 175,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          // color: Colors.green,
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/card_back.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Ikea Sale",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.040,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text("4.8")
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "105 NW, Calvary , AP, US",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.030,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 5),
                                            child: Text(
                                              "30% OFF",
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.030,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "min order \$100",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Expiry date ",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        ),
                                        Text(
                                          "20th May 2023 ",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Reward left ",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Text(
                                          "300",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.grey,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "YOU GET",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "YOUR FRIEND GETS",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: screenWidth * 0.030,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$5 Off Coupon",
                                          style: TextStyle(
                                            color: Color(0xff00AC00),
                                            fontSize: screenWidth * 0.030,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "20% Off Coupon",
                                          style: TextStyle(
                                            color: Color(0xff00AC00),
                                            fontSize: screenWidth * 0.030,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )),
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
