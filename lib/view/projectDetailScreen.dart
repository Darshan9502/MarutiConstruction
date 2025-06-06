import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maruti_construction/widgets/projectCard.dart';
import 'package:sizer/sizer.dart';

import '../widgets/customAppBar.dart';
import '../widgets/wingBox.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({super.key});

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  int? _selectedWing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size(100.w, 31.40.h),
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
                                  height: 4.10.h,
                                ),
                                onPressed: () {
                                  // Handle notification action
                                },
                              ),
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/svgs/person_icon.svg',
                                  height: 4.10.h,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WingBox(
                    letter: 'A',
                    index: 0,
                    isSelected: _selectedWing == 0,
                    onTap: () {
                      setState(() {
                        _selectedWing = 0;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  WingBox(
                    letter: 'B',
                    index: 1,
                    isSelected: _selectedWing == 1,
                    onTap: () {
                      setState(() {
                        _selectedWing = 1;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  WingBox(
                    letter: 'C',
                    index: 2,
                    isSelected: _selectedWing == 2,
                    onTap: () {
                      setState(() {
                        _selectedWing = 2;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(239, 241, 239, 1),
        ),
      ),
    );
  }
}
