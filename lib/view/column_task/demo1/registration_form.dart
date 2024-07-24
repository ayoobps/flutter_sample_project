import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Registration_Form extends StatefulWidget {
  const Registration_Form({super.key});

  @override
  State<Registration_Form> createState() => _Registration_FormState();
}

class _Registration_FormState extends State<Registration_Form> {
  final registerKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final companyController = TextEditingController();
  final websiteController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Form(
          key: registerKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your phone number';
                      }
                      final regex = RegExp(r'^[6-9]\d{9}$');
                      if (!regex.hasMatch(value)) {
                        return 'Enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                    controller: phoneController,
                    decoration: InputDecoration(
                      label: const Text("Phone"),
                      hintText: "Enter phone number here",
                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.r),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your address';
                      }
                      if (value.length < 10) {
                        return 'Address must be at least 10 charecters long';
                      }
                      return null;
                    },
                    controller: addressController,
                    decoration: InputDecoration(
                      label: const Text("Address"),
                      hintText: "Enter address here",
                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.r),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter company name';
                      }
                      //if (value.length < 10) {
                      //return 'Address must be at least 10 charecters long';
                      //}
                      return null;
                    },
                    controller: companyController,
                    decoration: InputDecoration(
                      label: const Text("Company"),
                      hintText: "Enter company name here",
                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.r),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: TextFormField(
                    keyboardType: TextInputType.url,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter website';
                      }
                      String pattern =
                          r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([/\w \.-]*)*\/?$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return 'Enter a valid website';
                      }
                      return null;
                    },
                    controller: websiteController,
                    decoration: InputDecoration(
                      label: const Text("Website"),
                      hintText: "Enter website here",
                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20.r),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email field can't be empty";
                      }
                      String pattern =
                          r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return "Enter valid email address";
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      label: const Text("Email"),
                      hintText: "Enter email address",
                      border: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(20.r),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password field can't be empty";
                      }
                      String pattern =
                          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])'
                          r'[A-Za-z\d@$!%*?&]{8,}$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return "Password must be at least 8 characters long and"
                            " include a mix of uppercase, lowercase, digits, and special characters";
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text("Password"),
                      hintText: "Enter password",
                      border: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(20.r),
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: SizedBox(
                    width: 100.w,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: () {
                        if (registerKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Successfully Logged")),
                          );
                        }
                      },
                      child: const Text("Create Account"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
