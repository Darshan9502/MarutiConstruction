import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Projectcard extends StatefulWidget {
  const Projectcard({super.key});

  @override
  State<Projectcard> createState() => _ProjectcardState();
}

class _ProjectcardState extends State<Projectcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE67E22),
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignOutside,
        ), // Orange border
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: SizedBox(
        height: 22.79.h,
        width: 86.36.w,
        child: Stack(
          children: [
            Positioned(
              top: 44.0,
              left: 83.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 12.27.w,
                    height: 5.67.h,
                    child: CircularProgressIndicator(
                      value: 2000 / 100,
                      strokeWidth: 5,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFFE67E22),
                      ),
                    ),
                  ),
                  Text(
                    '75%',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                      width: 100.w,
                      height: 8.50.h,
                      decoration: BoxDecoration(
                        color: Color(0XFF041E37),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('FRI, December 21 2024 09:00 AM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              )),
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
                      height: 23.2.h,
                      width: 30.76.w,
                     'assets/images/building_image.png',
                      fit: BoxFit.fill
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
