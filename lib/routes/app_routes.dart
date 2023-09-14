import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referola_customer/modules/user_type/user_type.dart';
import 'package:referola_customer/splash_screen.dart';

import '../modules/onboarding/onboarding.dart';

const String splashScreen = '/splashcreen';
const String onboarding = '/onboarding';
const String usertype = '/usertype';

Map<String, WidgetBuilder> myallroutes = {
  splashScreen: (context) => SplashScreen(),
  onboarding: (context) => Onboarding(),
  usertype: (context) => UserType(),
};

List<GetPage> getPages = [
  GetPage(
    name: splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => Onboarding(),
  ),
  GetPage(
    name: usertype,
    page: () => UserType(),
  ),
];
