import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FlyerDetails extends StatelessWidget {
  const FlyerDetails({super.key});

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
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => FlyerDetails());
                            },
                            child: Container(
                              width: screenWidth,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.03),
                                    offset: Offset(0, 2),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.03),
                                    offset: Offset(2, 0),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Container(
                                      height: 300,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/ikea_cover.png",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("IKEA - From dull to delish"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Expiry date"),
                                            Text("20th May 2023"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Reward left"),
                                            Text("300"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Container(
                                      width: double.maxFinite,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("YOU GET"),
                                                Text(
                                                  "\$1",
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("YOUR FRIEND GETS"),
                                                Text(
                                                  "\$1",
                                                  style: TextStyle(
                                                    color: Colors.green,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          "after friend views the flyer",
                                          style: TextStyle(
                                            color: Colors.grey,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                                            color:
                                                Colors.grey.withOpacity(0.09),
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
                                              separatorBuilder:
                                                  (context, index) {
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
                                                            const EdgeInsets
                                                                .all(0.0),
                                                        child: CircleAvatar(
                                                          radius: 40,
                                                          backgroundImage:
                                                              AssetImage(
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
                                                                style:
                                                                    TextStyle(
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
                                                                style:
                                                                    TextStyle(
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
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            width: 1,
                                                            color: Colors.grey,
                                                          ),
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
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
                                                  icon:
                                                      FontAwesomeIcons.whatsapp,
                                                  linkName: "WhatsApp"),
                                              shareBox(
                                                  icon: FontAwesomeIcons
                                                      .instagram,
                                                  linkName: "Instagram"),
                                              shareBox(
                                                  icon:
                                                      FontAwesomeIcons.twitter,
                                                  linkName: "Twitter"),
                                              shareBox(
                                                  icon:
                                                      FontAwesomeIcons.facebook,
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
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(
                                width: 2,
                                color: Color(0xff38A700),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Buy & Save",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.050,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff38A700),
                                ),
                              ),
                            ),
                          ),
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
