import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:referola_customer/modules/user_type/user_type.dart';
import 'package:referola_customer/routes/app_routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

List mytext = [
  "Save Refer & Earn",
  "Grow Your Sales\nby Trusted Referral",
  "Let Marketing \nGo Viral",
];

class _HomepageState extends State<Homepage> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset("assets/logo/referola.png"),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    carouselController: controller,
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index);
                    },
                    options: CarouselOptions(
                      height: 400,
                      viewportFraction: 1.0,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                  ),
                  SizedBox(height: 12),
                  buildIndicator()
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.20),
            child: GestureDetector(
              onTap: () {
                Get.to(() => UserType());
              },
              child: Container(
                height: screenHeight * 0.065,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Color(0xff5BB62E),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ",
                  style: TextStyle(
                    fontSize: screenWidth * 0.040,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "/ Login",
                  style: TextStyle(
                    fontSize: screenWidth * 0.040,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
          dotWidth: 15,
          activeDotColor: Colors.grey,
          dotColor: Colors.black.withOpacity(0.5),
        ),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              urlImage,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 50,
            right: 50,
            child: Container(
              height: 70,
              child: Center(
                child: Text(
                  mytext[index],
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
