import 'package:flutter/material.dart';
import 'package:flutter_sample_project/view/assignments_flutter/question1.dart';
import 'package:flutter_sample_project/view/assignments_flutter/question2.dart';
import 'package:flutter_sample_project/view/assignments_flutter/question3.dart';
import 'package:flutter_sample_project/view/assignments_flutter/question4.dart';
import 'package:flutter_sample_project/view/assignments_flutter/question5.dart';
import 'package:flutter_sample_project/view/colum_sample.dart';
import 'package:flutter_sample_project/view/column_task/Q1.dart';
import 'package:flutter_sample_project/view/column_task/Q10.dart';
import 'package:flutter_sample_project/view/column_task/Q11.dart';
import 'package:flutter_sample_project/view/column_task/Q2.dart';
import 'package:flutter_sample_project/view/column_task/Q3.dart';
import 'package:flutter_sample_project/view/column_task/Q4.dart';
import 'package:flutter_sample_project/view/column_task/Q5.dart';
import 'package:flutter_sample_project/view/column_task/Q6.dart';
import 'package:flutter_sample_project/view/column_task/Q7.dart';
import 'package:flutter_sample_project/view/column_task/Q8.dart';
import 'package:flutter_sample_project/view/column_task/Q9.dart';
import 'package:flutter_sample_project/view/column_task/demo1/project1.dart';
import 'package:flutter_sample_project/view/column_task/demo1/registration_form.dart';
import 'package:flutter_sample_project/view/container_sample.dart';
import 'package:flutter_sample_project/view/counter_app.dart';
import 'package:flutter_sample_project/view/div_counter_app.dart';
import 'package:flutter_sample_project/view/named_routes/named_one.dart';
import 'package:flutter_sample_project/view/named_routes/named_two.dart';
import 'package:flutter_sample_project/view/navigation_routing/page_one.dart';
import 'package:flutter_sample_project/view/sample_textfield.dart';
import 'package:flutter_sample_project/view/splash_screen2.dart';
import 'package:flutter_sample_project/view/sample_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sample_project/view/splash_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360,690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => NamedOne(),
            '/second': (context) => NamedTwo(),
          },

        ));
  }
}
