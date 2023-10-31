import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../physical_store_campaign/physical_store_campaign_view.dart';

class Product_service extends StatelessWidget {
  Product_service({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
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
                        image: AssetImage("assets/images/card_back.png"),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(15)),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
