import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/customer_module/cupon_details/cupon_details.dart';

class Rewards extends StatelessWidget {
  Rewards({super.key});

  List catType = [
    "Recommended",
    "Popular",
    "Stores",
    "Resturants",
    "Hotel",
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
                      "Rewards",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.045,
                        color: Color(0xff333333).withOpacity(0.87),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                RewardBox(
                  imageUrl: "assets/images/reward_icon.png",
                ),
                SizedBox(
                  height: 10,
                ),
                RewardBox(
                  imageUrl: "assets/images/reward_icon.png",
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Coupons Earned",
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
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => CuponDetails());
                  },
                  child: CuponsBox(
                    imageUrl: 'assets/images/cupon_pic.png',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CuponsBox(
                  imageUrl: 'assets/images/addidas.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RewardBox extends StatelessWidget {
  String imageUrl;

  RewardBox({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.160,
      width: screenWidth,
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
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.asset(
                    imageUrl,
                    height: screenWidth * 0.120,
                    width: screenWidth * 0.120,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total"),
                      Text("34566"),
                      Text("POINTS"),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.redeem),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Redeem"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CuponsBox extends StatelessWidget {
  String imageUrl;

  CuponsBox({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.160,
      width: screenWidth,
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
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                imageUrl,
                height: screenWidth * 0.150,
                width: screenWidth * 0.150,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Domino's Pizza",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                    children: [
                      Text("Valid Till : "),
                      Text("20th Jul 2023"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
