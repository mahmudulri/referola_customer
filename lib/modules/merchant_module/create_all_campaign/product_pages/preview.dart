import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:referola_customer/modules/customer_module/physical_store_campaign/description_one.dart';
import 'package:referola_customer/routes/app_routes.dart';

class PreviewProduct extends StatelessWidget {
  PreviewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
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
                                        "ADVOCATE REWARD",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: screenWidth * 0.02,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "FRIEND REWARD",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: screenWidth * 0.02,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "30 % Off Cupon",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: screenWidth * 0.02,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "30 % Off Cupon",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: screenWidth * 0.02,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/globe.png",
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Ikea.com"),
                            Spacer(),
                            Icon(Icons.call),
                            Text(
                              "+1133844444",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Campaign creation Fee",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 5",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("I agree to the"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                color: Colors.green,
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
