import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:badges/badges.dart' as badges;
import 'package:referola_customer/modules/customer_module/basepages/my_referola.dart';
import 'package:referola_customer/modules/customer_module/basepages/referalls.dart';
import 'package:referola_customer/modules/customer_module/basepages/wallet.dart';
import 'package:referola_customer/modules/customer_module/basepages/newhome.dart';

import 'base_pages/base_home.dart';
import 'base_pages/base_my_referola.dart';
import 'base_pages/campaigns_merchant.dart';
import 'base_pages/wallet_merchant.dart';

class BaseMerchant extends StatefulWidget {
  const BaseMerchant({super.key});

  @override
  State<BaseMerchant> createState() => _BaseMerchantState();
}

class _BaseMerchantState extends State<BaseMerchant> {
  List pages = [
    MerchantHome(),
    BaseMyReferola(),
    CampaignsMerchant(),
    WalletMerchant(),
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
                "assets/icons/bottom/campaigns_noselect.png",
                color:
                    selectedIndex == 2 ? Color(0xff00AC00) : Color(0xffBBBCBC),
                height: 35,
                width: 35,
                fit: BoxFit.fitWidth,
              ),
              label: 'Campaings',
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
