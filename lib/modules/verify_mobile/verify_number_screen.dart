import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/base/baseview.dart';
import 'package:referola_customer/modules/basepages/newhome.dart';
import 'package:referola_customer/modules/home/home_screen.dart';
import 'package:referola_customer/utils/colors.dart';
import 'package:referola_customer/widgets/otpbox.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: screenWidth,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.red,
                height: 140,
                width: 90,
                child: Image.asset(
                  "assets/images/logo.png",
                  // fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verify Mobile Number",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.060,
                      color: Color(0xff333333).withOpacity(0.87),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "Enter the verification code that has\n been sent to your mobile number",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                        color: Color(0xff333333).withOpacity(0.87),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OtpBox(),
                    OtpBox(),
                    OtpBox(),
                    OtpBox(),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => BaseView());
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: Color(0xff707070).withOpacity(0.25),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Resend Code",
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: AppColors.splashbackground,
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
