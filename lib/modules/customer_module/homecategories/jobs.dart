import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/customer_module/details/jobs_detail.dart';

import '../physical_store_campaign/physical_store_campaign_view.dart';

class Jobs extends StatelessWidget {
  Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => JobDetails());
          },
          child: Container(
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
                        height: 175,
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
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
        );
      },
    );
  }
}
