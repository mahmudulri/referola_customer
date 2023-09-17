import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/back.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 65,
              width: screenWidth,
              // color: Colors.green,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage("assets/images/profilepic.png"),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Color(0xff333333).withOpacity(0.70),
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.040,
                          ),
                        ),
                        Text(
                          "Mahmudul Hasan",
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.040,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.20),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(),
                  badges.Badge(
                    badgeStyle:
                        badges.BadgeStyle(badgeColor: Color(0xffDFB534)),
                    badgeContent: Text('3'),
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
