import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/customer_module/verify_mobile/verify_number_screen.dart';
import 'package:referola_customer/widgets/sign_up_button.dart';
import 'package:referola_customer/widgets/signup_textfield.dart';
import 'package:referola_customer/widgets/social_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              // color: Colors.red,
              height: 130,
              width: 80,
              child: Image.asset(
                "assets/images/logo.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: screenWidth * 0.050,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            signuptextfield(
              hintTxt: 'First Name',
            ),
            SizedBox(
              height: 10,
            ),
            signuptextfield(
              hintTxt: 'Last Name',
            ),
            SizedBox(
              height: 10,
            ),
            signuptextfield(
              hintTxt: 'Email Address',
            ),
            SizedBox(
              height: 10,
            ),
            signuptextfield(
              hintTxt: 'Mobile Number',
            ),
            SizedBox(
              height: 10,
            ),
            signuptextfield(
              hintTxt: 'Password',
            ),
            SizedBox(
              height: 10,
            ),
            signuptextfield(
              hintTxt: 'Confirm Password',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff38A700),
                  ),
                  child: Icon(
                    Icons.check,
                    color: isActive ? Color(0xff38A700) : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "I agree to the",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: "Program Agreement",
                          style: TextStyle(
                            color: Color(0xff38A700),
                          ),
                        ),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Advisor Agreement and Privacy Policy",
                          style: TextStyle(
                            color: Color(0xff38A700),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => VerifyNumberScreen());
              },
              child: SignUpButton(
                buttonName: "Sign Up",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or sign up with",
                  style: TextStyle(
                    color: Color(0xff333333).withOpacity(0.45),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SocialButton(
                  imageLink: "assets/images/google.png",
                ),
                SizedBox(
                  width: 15,
                ),
                SocialButton(
                  imageLink: "assets/images/apple.png",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.035,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "/ Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.035,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
