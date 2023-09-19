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
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/bottom/homeactive.png",
                color:
                    selectedIndex == 0 ? Color(0xff00AC00) : Color(0xffBBBCBC),
                height: 35,
                width: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/bottom/referolainactive.png",
                color:
                    selectedIndex == 1 ? Color(0xff00AC00) : Color(0xffBBBCBC),
                height: 35,
                width: 35,
                fit: BoxFit.fitWidth,
              ),
              label: 'My referola',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/bottom/referalinactive.png",
                color:
                    selectedIndex == 2 ? Color(0xff00AC00) : Color(0xffBBBCBC),
                height: 35,
                width: 35,
                fit: BoxFit.fitWidth,
              ),
              label: 'referrals',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/bottom/walletinactive.png",
                color:
                    selectedIndex == 3 ? Color(0xff00AC00) : Color(0xffBBBCBC),
                height: 35,
                width: 35,
              ),
              label: 'wallet',
            ),
          ],
          selectedItemColor: Color(0xff00AC00),
          unselectedItemColor: Color(0xffBBBCBC),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ));
  }
}
