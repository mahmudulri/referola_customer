import 'package:flutter/material.dart';
import 'package:referola_customer/widgets/signup_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              height: 150,
              width: 100,
              child: Image.asset(
                "assets/logo/referola.png",
                // fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
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
          ],
        ),
      ),
    ));
  }
}
