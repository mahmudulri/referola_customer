import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      child: ListView(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50, // Adjust the radius as needed
              backgroundImage: AssetImage(
                  'assets/images/ikea_logo.png'), // Replace with your image path
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: screenWidth * 0.08,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Upload your image/s for product\nor service or campaign theme"),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Campaign Name",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Campaign Description",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Text Color",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff0D3746),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xffBE2623),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff2B7094),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff5D4F5E),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xffD9694A),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff3C3F69),
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xff0AC3AA),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Text Orientation",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Center"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Campaign Details",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
