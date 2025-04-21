import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding_carousel.dart';


void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(390, 844), // Set to your design's base size
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnboardingCarousel(),
        );
      },
    ),
  );
}
