import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maruti_construction/view/siteProgress.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF041E37), Color(0xFF0B569D)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9.34.h),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 7.14.h),
                Container(
                  margin: EdgeInsets.only(bottom: 3.99.h),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 28.36.h,
                    width: 61.3.w,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 2.10.h),
                  height: 4.13.h,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter email here',
                      hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontSize: 18),
                      filled: false,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: Color(0xFFFF6600)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: Color(0xFFFF6600)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: Color(0xFFFF6600)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Container(
                  height: 4.13.h,
                  margin: EdgeInsets.only(bottom: 6.09.h),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password here',
                      hintStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontSize: 18),
                      filled: false,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: Color(0xFFFF6600)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: Color(0xFFFF6600)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: Color(0xFFFF6600)),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                // SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('SiteProgressScreen');
                  },
                  child: Container(
                    height: 5.58.h,
                    width: 363.53,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1,1.0],
                        colors: [
                          Color(0xFF0D1B2A), // dark navy
                          Color(0xFFFF6600), // orange
                        ],
                      ),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Text(

                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 4.41.h,
                  margin: EdgeInsets.only(bottom: 5.67.h),
                  child: RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By signing in, I agree to Company ',
                        style: TextStyle(
                          color: Color(0XFFB1B1B1),
                          fontSize: 15.5.sp,
                        ),
                        children: [
                          TextSpan(
                            text: 'Private Policy',
                            style: TextStyle(
                              color: Color(0XFF3292EF),
                              fontSize: 15.5.sp,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: Color(0XFFB1B1B1),
                              fontSize: 15.5.sp,
                            ),
                          ),
                          TextSpan(
                            text: ' Terms of Service',
                            style: TextStyle(
                              color: Color(0XFF3292EF),
                              fontSize: 15.5.sp,
                            ),
                          ),
                        ]
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
