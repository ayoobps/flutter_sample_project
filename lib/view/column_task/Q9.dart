import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Q9 extends StatelessWidget {
  const Q9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.redAccent,
              width: 100.w,
              height: 100.h,
            ),
            Container(
              color: Colors.greenAccent,
              width: 100.w,
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
