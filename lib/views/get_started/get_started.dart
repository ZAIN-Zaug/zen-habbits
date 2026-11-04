import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zen_habits_app/views/guest_view/guest_view.dart';
import 'package:zen_habits_app/theme/color.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 159.h,
            ),
            SizedBox(
              width: 192.r,
              height: 192.r,
              child: Image.asset('assets/images/images.jpg'),
            ),
            SizedBox(height: 48.h),
            Text(
              'ZenHabits',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight(1000),
                fontSize: 28.sp,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Your journey to a better you starts here',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 16.sp),
            ),
            SizedBox(height: 48.h),
            Container(
              width: 354.w,
              height: 274.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: AppColors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 56.w),
                      width: 350.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(30.r),
                        border: BoxBorder.all(color: AppColors.border),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/images/SVG.png', scale: 0.9),
                          SizedBox(width: 10.w),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 56.w),
                      width: 350.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(30.r),
                        border: BoxBorder.all(color: AppColors.border),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/images/SVG (2).png', scale: 0.8),
                          SizedBox(width: 10.w),
                          Text(
                            'Continue with Apple',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(color: AppColors.border, thickness: 1),
                        ),
                        SizedBox(width: 16.w),
                        Text('or', style: TextStyle(fontSize: 16.sp)),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Divider(color: AppColors.border, thickness: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Container(
                      width: 300.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email_outlined, color: AppColors.white),
                          SizedBox(width: 16.w),
                          Text(
                            'Continue with Email',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GuestView()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Try as guest',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.primary,
                      fontWeight: FontWeight(1000),
                    ),
                  ),
                  Icon(Icons.arrow_forward_outlined,color: AppColors.primary,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}