import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class project1 extends StatefulWidget {
  const project1({super.key});

  @override
  State<project1> createState() => _project1State();
}

class _project1State extends State<project1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            InkWell(
            onTap: () {
      print("Clicked");
      },
        child: Image.asset(
          "assets/images/whatsapp_logo.png",
          width: 150.w,
          height: 150.h,
        ),),
      GestureDetector(
        onTap: () {
          print("Second Print");
        },
        child: Image.asset(
          "assets/images/whatsapp_logo.png",
          width: 150.w,
          height: 150.h,
        ),
      ),
    ],
    )
    ,
    )
    ,
    );
  }
}
