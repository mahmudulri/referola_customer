import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:referola_customer/modules/customer_module/physical_store_campaign/description_one.dart';
import 'package:referola_customer/routes/app_routes.dart';

class JobDetails extends StatelessWidget {
  JobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
              ),
            ),
            Spacer(),
            Icon(FontAwesomeIcons.heart),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: ListView(
                children: [
                  Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.02),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            spreadRadius: 4,
                          ),
                        ],

                        // color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/jobs.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 190,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product Design",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.040,
                                        ),
                                      ),
                                      Text(
                                        "Engineer",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.040,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Google lnc",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.030,
                                              color: Colors.grey,
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
                                            "Sunnyvale, CA USA ",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.030,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Expiry date : ",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.030,
                                            ),
                                          ),
                                          Text(
                                            "20 May 2023",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.030,
                                              color: Colors.grey,
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
                                            "\$200",
                                            style: TextStyle(
                                              color: Color(0xff00AC00),
                                              fontSize: screenWidth * 0.030,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "\$200",
                                            style: TextStyle(
                                              color: Color(0xff00AC00),
                                              fontSize: screenWidth * 0.030,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "after friend completes the survey",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: screenWidth * 0.030,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Get 30% off on lkea products",
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.030,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Campaign Policy",
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.030,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Campaign Terms & Conditions",
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.030,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                                child: Text(
                              "Apply Now",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: screenWidth * 0.050,
                              ),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: screenHeight * 0.80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.09),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Icon(
                                                Icons.search,
                                                size: screenWidth * 0.090,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Search",
                                                  hintStyle: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize:
                                                        screenWidth * 0.045,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.white,
                                          child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                height: 2,
                                              );
                                            },
                                            itemCount: 15,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                height: screenHeight * 0.070,
                                                width: screenWidth,
                                                // color: Colors.green,
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              0.0),
                                                      child: CircleAvatar(
                                                        radius: 40,
                                                        backgroundImage: AssetImage(
                                                            "assets/images/profilepic.png"),
                                                      ),
                                                    ),
                                                    Container(
                                                      // color: Colors.red,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 2),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Welcome",
                                                              style: TextStyle(
                                                                color: Color(
                                                                        0xff333333)
                                                                    .withOpacity(
                                                                        0.70),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.035,
                                                              ),
                                                            ),
                                                            Text(
                                                              "mhase054@gmail.com",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff333333),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.035,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 1,
                                                          color: Colors.grey,
                                                        ),
                                                        color: Colors.white,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 70,
                                        width: screenWidth,
                                        color: Colors.white,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            shareBox(
                                                icon: FontAwesomeIcons.link,
                                                linkName: "Copy link"),
                                            shareBox(
                                                icon: FontAwesomeIcons.whatsapp,
                                                linkName: "WhatsApp"),
                                            shareBox(
                                                icon:
                                                    FontAwesomeIcons.instagram,
                                                linkName: "Instagram"),
                                            shareBox(
                                                icon: FontAwesomeIcons.twitter,
                                                linkName: "Twitter"),
                                            shareBox(
                                                icon: FontAwesomeIcons.facebook,
                                                linkName: "Facebook"),
                                            shareBox(
                                                icon: FontAwesomeIcons
                                                    .facebookMessenger,
                                                linkName: "Message"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff38A700),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                              child: Text(
                            "Refer & Earn",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.050,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class shareBox extends StatelessWidget {
  IconData icon;
  String linkName;
  shareBox({
    super.key,
    required this.icon,
    required this.linkName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffC3C3C3).withOpacity(0.22),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            5.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                linkName,
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
