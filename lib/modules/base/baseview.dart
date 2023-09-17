import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:badges/badges.dart' as badges;
import 'package:referola_customer/modules/basepages/my_referola.dart';
import 'package:referola_customer/modules/basepages/referalls.dart';
import 'package:referola_customer/modules/basepages/wallet.dart';
import 'package:referola_customer/modules/basepages/newhome.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  List pages = [
    NewHome(),
    MyReferola(),
    Referrals(),
    Wallet(),
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xffF4F6F5),
        // statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
                size: 30,
              ),
              label: 'My referola',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              label: 'referrals',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              label: 'wallet',
            ),
          ],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.cyan,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ));
  }
}
