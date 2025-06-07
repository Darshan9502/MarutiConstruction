import 'dart:async';
import 'dart:ui' as ui;

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:maruti_construction/widgets/curvedNavigationBar.dart';
import 'package:maruti_construction/widgets/customBottomNavBar.dart';
import 'package:maruti_construction/widgets/projectCard.dart';
import 'package:sizer/sizer.dart';

import '../widgets/customAppBar.dart';
import '../widgets/wingBox.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({super.key});

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen>
    with SingleTickerProviderStateMixin {
  int? _selectedWing;
  final List<Map<String, dynamic>> wings = [
    {'name': 'A', 'progress': 0.0},
    {'name': 'B', 'progress': 0.75},
    {'name': 'C', 'progress': 1.0},
  ];
  late AnimationController _animationController;
  late Animation<double> _lineAnimation;
  ui.Image? _buildingImage;

  @override
  void initState() {
    super.initState();
    _selectedWing = 0; // Initialize to first wing
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    _lineAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _loadImage();
  }

  Future<void> _loadImage() async {
    final imageProvider = AssetImage('assets/images/complete_building_image.png');
    final completer = Completer<ui.Image>();
    final imageStream = imageProvider.resolve(ImageConfiguration());
    ImageStreamListener? imageStreamListener;
    imageStreamListener = ImageStreamListener(
          (ImageInfo info, bool synchronousCall) {
        completer.complete(info.image);
        imageStream.removeListener(imageStreamListener!);
      },
      onError: (exception, stackTrace) {
        completer.completeError(exception, stackTrace);
      },
    );
    imageStream.addListener(imageStreamListener);
    _buildingImage = await completer.future;
    setState(() {});
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onWingTapped(int index) {
    setState(() {
      _selectedWing = index;
    });
    _animationController.reset();
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double progress = wings[_selectedWing!]['progress'];

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
                  padding: EdgeInsets.only(left: 6.81.w, right: 3.40.w, bottom: 2.05.h),
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
                                  width: 8.88.w,
                                ),
                                onPressed: () {
                                  // Handle notification action
                                },
                              ),
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/svgs/person_icon.svg',
                                  height: 4.10.h,
                                  width: 8.88.w,
                                ),
                                onPressed: () {
                                  // Handle notification action
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.05.h, horizontal: 6.36.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(wings.length, (index) {
                    return WingBox(
                      letter: wings[index]['name'],
                      index: index,
                      isSelected: _selectedWing == index,
                      onTap: () => _onWingTapped(index),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h),
            Stack(
              children: [
                Center(
                  child: _buildingImage == null
                      ? CircularProgressIndicator()
                      : CustomPaint(
                    painter: BuildingProgressPainter(
                      image: _buildingImage!,
                      progress: progress,
                    ),
                    size: Size(53.63.w, 43.00.h),
                  ),
                ),
                Positioned(
                  right: 5, // Reduced from 20 to bring the line closer to the building
                  top: 0,
                  bottom: 0,
                  child: AnimatedBuilder(
                    animation: _lineAnimation,
                    builder: (context, child) {
                      return CustomPaint(
                        painter: ProgressLinePainter(
                          progress: progress * _lineAnimation.value,
                        ),
                        size: Size(30, 43.00.h),
                      );
                    },
                  ),
                ),
              ],
            ),
            Divider(
              height: 0.00.h,
              thickness: 0.10.h,
              color: const Color(0xFFFF6600),
              indent: 80.0,
              endIndent: 80.0,
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(239, 241, 239, 1),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class BuildingProgressPainter extends CustomPainter {
  final ui.Image image;
  final double progress;

  BuildingProgressPainter({required this.image, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final double imageHeight = size.height;
    final double imageWidth = size.width;
    final double completedHeight = imageHeight * progress; // Height of completed (colored) portion
    final double remainingHeight = imageHeight - completedHeight; // Height of remaining (black-and-white) portion

    // Draw the full image in color first
    final paint = Paint();
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTWH(0, 0, imageWidth, imageHeight),
      paint,
    );

    // Draw the grayscale portion (top to remaining height)
    final grayscalePaint = Paint()
      ..colorFilter = ColorFilter.matrix(<double>[
        0.2126, 0.7152, 0.0722, 0, 0,
        0.2126, 0.7152, 0.0722, 0, 0,
        0.2126, 0.7152, 0.0722, 0, 0,
        0, 0, 0, 1, 0,
      ]); // Grayscale matrix

    canvas.save();
    canvas.clipRect(Rect.fromLTWH(0, 0, imageWidth, remainingHeight));
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTWH(0, 0, imageWidth, imageHeight),
      grayscalePaint,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ProgressLinePainter extends CustomPainter {
  final double progress;

  ProgressLinePainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final verticalEndY = size.height * (1 - progress); // Reverse progress: 100% at top, 0% at bottom
    final horizontalLength = 30.0; // Length of the horizontal line segment

    // Draw vertical line from top to progress point
    canvas.drawLine(
      Offset(size.width - 50, 0),
      Offset(size.width - 50, verticalEndY),
      paint,
    );

    // Draw horizontal line (90-degree turn to the left)
    canvas.drawLine(
      Offset(size.width - 80 , verticalEndY),
      Offset(size.width - 50, verticalEndY),
      paint,
    );

    // Draw circle at the end of the horizontal line
    final dotPosition = Offset(size.width - 80, verticalEndY);
    canvas.drawCircle(
      dotPosition,
      5,
      Paint()..color = Colors.orange,
    );

    // Draw percentage text above the dot, moving with the dot
    final textPainter = TextPainter(
      text: TextSpan(
        text: '${(progress * 100).toInt()}%',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final textOffset = Offset(
      dotPosition.dx - textPainter.width + 45, // Position to the left of the dot
      -15, // Slightly above the dot
    );
    textPainter.paint(canvas, textOffset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}