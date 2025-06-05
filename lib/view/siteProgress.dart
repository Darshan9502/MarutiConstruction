import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maruti_construction/widgets/projectCard.dart';
import 'package:sizer/sizer.dart';

import '../widgets/customAppBar.dart';

class SiteProgress extends StatefulWidget {
  const SiteProgress({super.key});

  @override
  State<SiteProgress> createState() => _SiteProgressState();
}

class _SiteProgressState extends State<SiteProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size(100.w, 20.21.h),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(239, 241, 239, 1),
          ),
          child: Column(
            children: [
              Container(
                height: 17.12.h,
                width: 100.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/appbar_background.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 6.81.w, right: 3.40.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            height: 6.72.h,
                            width: 14.54.w,
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/svgs/notification_icon.svg',
                                ),
                                onPressed: () {
                                  // Handle notification action
                                },
                              ),
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/svgs/person_icon.svg',
                                ),
                                onPressed: () {
                                  // Handle notification action
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 2.10.h),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 6.81.w),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/svgs/search_icon.svg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: 74.78.h,
        width: 100.w,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(239, 241, 239, 1),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 6.81.w, right: 6.81.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.52.h,
                child: Center(
                  child: Text(
                    'Current Projects',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.42.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2.2.h),
                      child: Projectcard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
