import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:referola_customer/draft.dart';
import 'package:referola_customer/modules/onboarding/onboarding.dart';
import 'package:referola_customer/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Get.to(() => Homepage());
    });
    super.initState();
  }

  // void _navigateToNextScreen() async {
  //   await Future.delayed(Duration(seconds: 5));

  //   Get.to(() => Homepage());
  // }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.splashbackground,
      body: Center(
        child: Text(
          "R",
          style: TextStyle(
            fontSize: screenWidth * 0.45,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
