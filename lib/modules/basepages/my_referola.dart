import 'package:flutter/material.dart';

class MyReferola extends StatelessWidget {
  const MyReferola({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text("My referola"),
      ),
    ));
  }
}
