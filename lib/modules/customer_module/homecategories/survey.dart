import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/customer_module/details/survey_details.dart';

import '../physical_store_campaign/physical_store_campaign_view.dart';

class Survey extends StatelessWidget {
  Survey({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => SurveyDetails());
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
                            image: AssetImage("assets/images/survery.png"),
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
                                "Ikea",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.040,
                                ),
                              ),
                              Text(
                                "Questionnaire",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.040,
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
                                          horizontal: 10, vertical: 5),
                                      child: Text(
                                        "2 mins",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.030,
                                        ),
                                      ),
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
                                    "Rewards left ",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.030,
                                    ),
                                  ),
                                  Text(
                                    "  300",
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
                                    "Survey Deadline : ",
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
                                    "\$5",
                                    style: TextStyle(
                                      color: Color(0xff00AC00),
                                      fontSize: screenWidth * 0.030,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$5",
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
