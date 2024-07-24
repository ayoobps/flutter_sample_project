import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumSample extends StatelessWidget {
  const ColumSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(height: 10.h),
            Container(
              color: Colors.orange,
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(height: 10.h),
            Container(
              color: Colors.yellow,
              width: 100.w,
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
