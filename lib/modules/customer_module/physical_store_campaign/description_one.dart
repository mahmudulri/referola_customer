import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:referola_customer/modules/customer_module/physical_store_campaign/description_one.dart';
import 'package:referola_customer/routes/app_routes.dart';

class DescriptionOne extends StatelessWidget {
  DescriptionOne({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
              ),
            ),
            Spacer(),
            Icon(FontAwesomeIcons.heart),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Container(
              height: 175,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/card_back.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ikea Sale",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.040,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text("4.8")
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "105 NW, Calvary , AP, US",
                              style: TextStyle(
                                fontSize: screenWidth * 0.030,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Text(
                                      "30% OFF",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.030,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "min order \$100",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Expiry date ",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                                Text(
                                  "20th May 2023 ",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Reward left ",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "300",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Text(
                                  "YOU GET",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "YOUR FRIEND GETS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: screenWidth * 0.030,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$5 Off Coupon",
                                  style: TextStyle(
                                    color: Color(0xff00AC00),
                                    fontSize: screenWidth * 0.030,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "20% Off Coupon",
                                  style: TextStyle(
                                    color: Color(0xff00AC00),
                                    fontSize: screenWidth * 0.030,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/globe.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Ikea.com"),
                      Spacer(),
                      Icon(Icons.call),
                      Text(
                        "+1133844444",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: screenWidth,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BUSINESS TYPE",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.030,
                                  color: Colors.grey,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icons/store.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "PHYSICAL STORE",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.030,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/map.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "View map",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 200,
                    width: 250,
                    child: Image.asset(
                      'assets/images/qrcode.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.all(0),
                              content: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: screenHeight * 0.600,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(25.0),
                                            child: Image.asset(
                                                "assets/images/thanks.png"),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Thank You for",
                                            style: TextStyle(
                                              color: Color(0xff333333),
                                              fontSize: screenWidth * 0.045,
                                            ),
                                          ),
                                          Text(
                                            "Your Interest",
                                            style: TextStyle(
                                              color: Color(0xff333333),
                                              fontSize: screenWidth * 0.045,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30),
                                            child: Text(
                                              "Seller may contact you via phone or email. You can view this deal in Saved Campaign section of My Referola screen",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff38A700),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Text(
                                                      "Ok",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            screenWidth * 0.050,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff38A700),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "I'm Interested",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.050,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
