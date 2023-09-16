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
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: hintTxt.contains("Password")
                  ? Icon(
                      Icons.visibility,
                      color: Color(0xff676C6A).withOpacity(0.40),
                    )
                  : null,
              border: InputBorder.none,
              hintText: hintTxt,
              hintStyle: TextStyle(
                fontSize: screenWidth * 0.030,
                color: Color(0xff2F2E43).withOpacity(0.40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
