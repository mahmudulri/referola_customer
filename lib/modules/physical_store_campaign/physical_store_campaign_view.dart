import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CampaignDetails extends StatelessWidget {
  CampaignDetails({super.key});

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
      body: Column(
        children: [
          Expanded(
            flex: 11,
            child: ListView(
              children: [
                Container(
                  height: 175,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/card_back.png",
                              ),
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
                SizedBox(
                  height: 10,
                ),
                Row()
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
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
