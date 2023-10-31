import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "Tax ID",
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
          height: 80,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "Does Your business have : ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Radio(
              activeColor: Color(0xff38A700),
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Physical Location.",
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Radio(
              activeColor: Color(0xff38A700),
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Licensed.",
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Radio(
              activeColor: Color(0xff38A700),
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Online.",
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Radio(
              activeColor: Color(0xff38A700),
              value: 4,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Insured.",
            ),
          ],
        ),
      ],
    );
  }
}
