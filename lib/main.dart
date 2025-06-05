import 'package:flutter/material.dart';
import 'package:maruti_construction/view/loginScreen.dart';
import 'package:maruti_construction/view/projectDetailScreen.dart';
import 'package:maruti_construction/view/siteProgress.dart';
import 'package:maruti_construction/widgets/spalshScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: [
            GetPage(name: '/', page: () => SplashScreen()),
            GetPage(name: '/LoginScreen', page: () => LoginScreen()),
            GetPage(name: '/SiteProgressScreen', page: () => SiteProgress()),
            GetPage(name: '/ProjectDetailScreen', page: () => ProjectDetailScreen()),
          ],
        );
      },
    );
  }
}


