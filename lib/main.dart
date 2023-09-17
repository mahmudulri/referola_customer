import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:referola_customer/draft.dart';
import 'package:referola_customer/routes/app_routes.dart';
import 'package:referola_customer/splash_screen.dart';

import 'modules/home/newhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Referola Customer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NewHome(),

      // initialRoute: onboarding,
      // routes: myallroutes,
    );
  }
}
