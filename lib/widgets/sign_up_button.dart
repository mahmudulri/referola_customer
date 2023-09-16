import 'package:flutter/material.dart';
import 'package:referola_customer/utils/colors.dart';

class SignUpButton extends StatelessWidget {
  String? buttonName;
  SignUpButton({super.key, this.buttonName});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.055,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.splashbackground,
      ),
      child: Center(
          child: Text(
        buttonName.toString(),
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: screenWidth * 0.045,
        ),
      )),
    );
  }
}
