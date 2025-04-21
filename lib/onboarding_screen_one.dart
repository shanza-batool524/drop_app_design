import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding_screen_two.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC08AE0),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/onboarding_search.png",fit: BoxFit.fill,
              width: 1.sw,
              height: 404.h,
            ),
          ),
          Positioned(
            top: 380.h,
            child: Container(
              height: 336.h,
              width: 320.w,
              decoration: BoxDecoration(
                color: const Color(0xffF5F5F5),
                border: Border.all(color: Colors.black, width: 2.46.w),
                borderRadius: BorderRadius.circular(8.2.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 10.h),
                    blurRadius: 0,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 52.h),
                  Image.asset(
                    'assets/images/drop_text.png',
                    width: 200.w,
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Drop is a brand & influencer-powered platform for giveaways and exclusive discounts for members only. Drops can be anything from one-of-a-kind experiences to unique merchandise.",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff756F6F),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardingScreenTwo()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFDE66),
                        foregroundColor: const Color(0xFF2F213F),
                        side: BorderSide(color: const Color(0xFF2F213F), width: 4.w),
                        padding: EdgeInsets.symmetric(
                          horizontal: 32.w,
                          vertical: 16.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Icon(Icons.arrow_right_alt, size: 20.sp),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
