import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Q2 extends StatelessWidget {
  const Q2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.redAccent,
              width: 100.w,
              height: 100.h,
            ),
            Container(
              color: Colors.greenAccent,
              width: 200.w,
              height: 100.h,
            ),
            Container(
              color: Colors.blue,
              width: 100.w,
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
