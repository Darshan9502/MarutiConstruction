import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WingBox extends StatelessWidget {
  final String letter;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const WingBox({
    Key? key,
    required this.letter,
    required this.index,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 12.07.h, // 80px height relative to 952px screen height
        width: 26.13.w, // 80px width relative to 440px screen width
        decoration: BoxDecoration(
          color: Color.fromRGBO(239, 241, 239, 1),
          boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Color(0x33FF6600), // Light transparent orange
                  blurRadius: 8,
                  spreadRadius: -5,
                  offset: Offset(0, 8), // Strong bottom shadow
                ),
                BoxShadow(
                  color: Color(0x1AFF6600), // Even lighter orange
                  blurRadius: 10,
                  spreadRadius: -2,
                  offset: Offset(-4, 4), // Slight left glow
                ),
                BoxShadow(
                  color: Color(0x1AFF6600), // Even lighter orange
                  blurRadius: 10,
                  spreadRadius: -2,
                  offset: Offset(4, 4), // Slight right glow
                ),
              ]
            : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: math.pi, // Rotate to fill counterclockwise
                  child: SizedBox(
                    width: (80 / 440) * 100.w,
                    height: (80 / 952) * 100.h,
                    child: CircularProgressIndicator(
                      value: 1, // Fill counterclockwise
                      strokeWidth: 8,
                      padding: EdgeInsets.only(bottom: 5),
                      backgroundColor: Colors.grey,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFFFF6600), // Orange color as specified
                      ),
                    ),
                  ),
                ),
                Text(
                  letter,
                  style: TextStyle(
                    fontSize:
                        (46.67 / 952) *
                        100.h, // 46.67px relative to screen height
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 0.52.h),
            Text(
              'Wing',
              style: TextStyle(
                fontSize: (14 / 952) * 100.h, // 14px relative to screen height
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600, // SemiBold
                color: Color(0xFFFF6600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
