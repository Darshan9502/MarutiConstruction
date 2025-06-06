import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

import '../view/projectDetailScreen.dart';

class Projectcard extends StatefulWidget {
  const Projectcard({super.key});

  @override
  State<Projectcard> createState() => _ProjectcardState();
}

Widget Card() {
  return Stack(
    children: [
      Container(
        height: 22.79.h,
        width: 86.36.w,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: const Color(0xFFFF6600),
              width: 1.5,
              // strokeAlign: BorderSide.strokeAlignCenter,
            ),
            top: BorderSide(
              color: const Color(0xFFFF6600),
              width: 1.2,
              // strokeAlign: BorderSide.strokeAlignCenter,
            ),
            left: BorderSide(
              color: const Color(0xFFFF6600),
              width: 1.5,
              // strokeAlign: BorderSide.strokeAlignCenter,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(48),
            bottomRight: Radius.circular(48),
          ),
        ),
      ),
      Positioned(
        top: 44.0,
        left: 83.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 12.27.w,
              height: 5.67.h,
              child: Transform.rotate(
                angle: math.pi / 2, // Rotate 180 degrees to flip the starting point
                child: SizedBox(
                  child: CircularProgressIndicator(
                    value: 1 - 0.25, // Reverse the progress to fill counterclockwise
                    strokeWidth: 5,
                    backgroundColor: Color.fromRGBO(239, 241, 239, 1),
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Color(0xFFFF6600),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              '75%',
              style: TextStyle(
                color: const Color(0xFFE67E22),
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          padding: EdgeInsets.only(left: 4.0.w),
          width: 86.36.w,
          height: 8.50.h,
          decoration: BoxDecoration(
            color: Color(0XFF041E37),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FRI, December 21 2024 09:00 AM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 0.5.h),
              Text(
                'Fortune Business Hub',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 0.5.h),
              Text(
                'Ahmedabad',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 186.0,
        child: Image.asset(
          height: 23.50.h,
          width: 116.92,
          'assets/images/building_image.png',
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

class _ProjectcardState extends State<Projectcard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/ProjectDetailScreen');
      },
      child: Card()
    );
    // return GestureDetector(
    //   onTap: () {
    //     // Navigate to project detail screen
    //     Get.toNamed('ProjectDetailScreen');
    //   },
    //   child: Container(
    //     decoration: BoxDecoration(
    //       border: Border(
    //         right: BorderSide(color: const Color(0xFFE67E22),width: 2.0,strokeAlign: BorderSide.strokeAlignCenter),
    //         top:  BorderSide(color: const Color(0xFFE67E22),width: 2.0,strokeAlign: BorderSide.strokeAlignCenter),
    //         left:  BorderSide(color: const Color(0xFFE67E22),width: 2.0,strokeAlign: BorderSide.strokeAlignCenter),
    //       ),
    //       borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(24),
    //         topRight: Radius.circular(24),
    //         bottomLeft: Radius.circular(48),
    //         bottomRight: Radius.circular(48),
    //       ),
    //     ),
    //     child: SizedBox(
    //       height: 22.79.h,
    //       // width: 86.36.w,
    //       child: Stack(
    //         children: [
    //           Positioned(
    //             top: 44.0,
    //             left: 83.0,
    //             child: Stack(
    //               alignment: Alignment.center,
    //               children: [
    //                 SizedBox(
    //                   width: 12.27.w,
    //                   height: 5.67.h,
    //                   child: CircularProgressIndicator(
    //                     value: 199 * 100 / 265,
    //                     strokeWidth: 5,
    //                     backgroundColor: Colors.grey,
    //                     valueColor: const AlwaysStoppedAnimation<Color>(
    //                       Color(0xFFE67E22),
    //                     ),
    //                   ),
    //                 ),
    //                 Text(
    //                   '75%',
    //                   style: TextStyle(
    //                     color: Colors.orange,
    //                     fontSize: 16.sp,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Stack(
    //             children: [
    //               Positioned(
    //                 bottom: 0,
    //                 child: Container(
    //                   padding: EdgeInsets.only(left: 2.0.w),
    //                   width: 86.90.w,
    //                   height: 8.50.h,
    //                   decoration: BoxDecoration(
    //                     color: Color(0XFF041E37),
    //                     borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(12),
    //                       topRight: Radius.circular(12),
    //                       bottomLeft: Radius.circular(12),
    //                       bottomRight: Radius.circular(12),
    //                     ),
    //                   ),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text('FRI, December 21 2024 09:00 AM',
    //                           style: TextStyle(
    //                             color: Colors.white,
    //                             fontSize: 12.sp,
    //                             fontWeight: FontWeight.w500,
    //                           )),
    //                       SizedBox(height: 0.5.h),
    //                       Text(
    //                         'Fortune Business Hub',
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 14.sp,
    //                           fontWeight: FontWeight.w600,
    //                         ),
    //                       ),
    //                       SizedBox(height: 0.5.h),
    //                       Text(
    //                         'Ahmedabad',
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 12.sp,
    //                           fontWeight: FontWeight.w400,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 left: 186.0,
    //                 child: Image.asset(
    //                   height: 22.79.h,
    //                   width: 116.92,
    //                  'assets/images/building_image.png',
    //                   fit: BoxFit.fill
    //                 ),
    //               )
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
