import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<Icon> _icons = [
    Icon(Icons.home, color: Colors.white),
    Icon(Icons.search, color: Colors.white),
    Icon(Icons.notifications, color: Colors.white),
    Icon(Icons.person, color: Colors.white),
    Icon(Icons.person, color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    double navBarWidth = 93.475.w;
    double navBarHeight = 6.40.h;
    double clipWidth = 17.36.w;
    double clipHeight = 7.89.h;

    return Container(
      width: navBarWidth,
      height: navBarHeight,
      margin: EdgeInsets.symmetric(
        horizontal: (20 / 440) * 100.w,
        vertical: 2.67.h,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF041E37), Color(0xFF0B569D)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          /// Notch background
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            top: -2.4.h,
            left: (_selectedIndex * (navBarWidth / _icons.length)) +
                ((navBarWidth / _icons.length - clipWidth) / 2),
            child: Image.asset('assets/images/bottomNotch.png',width: 17.36.w,height: 7.89.h,)
          ),

          /// Icon row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_icons.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Container(
                  width: (60 / 440) * 100.w,
                  height: (60 / 952) * 100.h,
                  child: Center(
                    child: Container(
                      width: (40 / 440) * 100.w,
                      height: (40 / 952) * 100.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex == index
                            ? Color(0xFFFF6600)
                            : Colors.transparent,
                      ),
                      child: _icons[index],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
