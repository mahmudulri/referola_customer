import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: ListView(
        children: [
          //..................Phone.........................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Business Phone",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          //...........................................Email....................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Business Email",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          //.................................Website.....................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Business Website",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          //..........................Business Address 1.................../

          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Business Address 1",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          //..............................................Business 2.................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Business Address 2",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          //.................................ZIP......................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Zip",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          //.................................State......................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "State",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    FontAwesomeIcons.chevronDown,
                    size: 15,
                  ),
                  border: InputBorder.none,
                  hintText: "State",
                ),
              ),
            ),
          ),
          //.................................City......................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "City",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    FontAwesomeIcons.chevronDown,
                    size: 15,
                  ),
                  border: InputBorder.none,
                  hintText: "City",
                ),
              ),
            ),
          ),
          //.................................Country......................//
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Country",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    FontAwesomeIcons.chevronDown,
                    size: 15,
                  ),
                  border: InputBorder.none,
                  hintText: "Country",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
