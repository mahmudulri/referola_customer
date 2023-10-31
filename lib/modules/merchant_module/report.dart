import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/controllers/category_button_controller.dart';
import 'package:referola_customer/modules/customer_module/referral%20status/referrals_status.dart';
import 'package:referola_customer/modules/customer_module/rewards/rewards.dart';
import 'package:referola_customer/modules/customer_module/saved_campaign/saved_campaign.dart';
import 'package:referola_customer/widgets/category_button.dart';

class Report extends StatefulWidget {
  Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
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
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: screenHeight * 0.050,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: screenWidth * 0.0650,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Report",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.055,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: screenWidth,
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
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      reportBox(
                        reportName: 'Referrals Shared',
                        count: 400,
                        icon: Icon(Icons.share),
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      reportBox(
                        reportName: 'Referrals Viewed',
                        count: 370,
                        icon: Icon(Icons.visibility),
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      reportBox(
                        reportName: 'Referrals Link Clicks',
                        count: 450,
                        icon: Icon(Icons.visibility),
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      reportBox(
                        reportName: 'Website Visits',
                        count: 320,
                        icon: Icon(Icons.web),
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      reportBox(
                        reportName: 'Store Visits',
                        count: 320,
                        icon: Icon(Icons.store),
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      reportBox(
                        reportName: 'Purchase by referred customers',
                        count: 345,
                        icon: Icon(Icons.web),
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Referrals",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$ 5,122",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                  Text(
                                    "2.50",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Referral Sales",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.028,
                                      ),
                                    ),
                                    Text(
                                      "345",
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Revenue from referrals",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.028,
                                      ),
                                    ),
                                    Text(
                                      "20%",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 170,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Center(
                  child: Text("Graph Data"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Survey Completed",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "400",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Survey",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Referred",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.028,
                                      ),
                                    ),
                                    Text(
                                      "600",
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Spend on Surveys",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.028,
                                      ),
                                    ),
                                    Text(
                                      "\$3000",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "New Customers",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2090",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                  Text(
                                    "2090",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "New Advocates",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1289",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                  Text(
                                    "1289",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: screenWidth,
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
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Top Referrers",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.045,
                              ),
                            ),
                          ],
                        ),
                      ),
                      topReferes(
                        reportName: 'John Doe',
                        count: 345,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      topReferes(
                        reportName: 'Amy Smith',
                        count: 345,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      topReferes(
                        reportName: 'Emma Atkins',
                        count: 345,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      topReferes(
                        reportName: 'Joe Max',
                        count: 345,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      topReferes(
                        reportName: 'Erik Hawkins',
                        count: 345,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: screenWidth,
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
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Social Media Shares",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.045,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          children: [
                            Text(
                              "220",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.045,
                              ),
                            ),
                          ],
                        ),
                      ),
                      socailBox(
                        reportName: 'Facebook',
                        count: 180,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      socailBox(
                        reportName: 'Twitter',
                        count: 15,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      socailBox(
                        reportName: 'WhatsApp',
                        count: 15,
                      ),
                      Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      socailBox(
                        reportName: 'Messenger',
                        count: 15,
                      ),
                    ],
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

class reportBox extends StatelessWidget {
  String reportName;
  int count;
  Widget icon;
  reportBox({
    required this.reportName,
    required this.count,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: icon,
          ),
          Expanded(
            flex: 3,
            child: Text(
              reportName,
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Color(0xff333333),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              count.toString(),
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class topReferes extends StatelessWidget {
  String reportName;
  int count;

  topReferes({
    required this.reportName,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Image"),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Text(
              reportName,
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Color(0xff333333),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              count.toString(),
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class socailBox extends StatelessWidget {
  String reportName;
  int count;

  socailBox({
    required this.reportName,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Image"),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Text(
              reportName,
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Color(0xff333333),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              count.toString(),
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
