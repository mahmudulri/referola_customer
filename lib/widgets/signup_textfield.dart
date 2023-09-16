import 'package:flutter/material.dart';

class signuptextfield extends StatelessWidget {
  String hintTxt;
  signuptextfield({
    required this.hintTxt,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.060,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xff38A700).withOpacity(0.10),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintTxt,
          ),
        ),
      ),
    );
  }
}
