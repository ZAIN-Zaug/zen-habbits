import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:zen_habits_app/views/sign_in/sign_in.dart";
import "package:zen_habits_app/theme/color.dart";

class GuestView extends StatelessWidget {
  const GuestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(),
          SizedBox(height: 96.h),
          Container(
            width: 96.r,
            height: 96.r,
            decoration: BoxDecoration(
              color: AppColors.primarySoft,
              borderRadius: BorderRadius.circular(99.r),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/Icon.svg',
                height: 32.h,
                width: 66.w,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'ZenHabits',
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight(1000),
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'A calmer approach to productivity',
            style: TextStyle(fontSize: 18.sp, color: AppColors.textSecondary),
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
                SizedBox(height: 24.h),
                Text(
                  'Explore ZenHabits',
                  style: TextStyle(fontSize: 24.sp, color: AppColors.textPrimary),
                ),
                Padding(
                  padding: EdgeInsets.all(24.r),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline,
                        color: AppColors.accentGreen,
                        size: 30.r,
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          "Your data will be saved locally on "
                              "this device prioritizing your privacy",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(24.r),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cloud_sync_outlined,
                        color: AppColors.accentGreen,
                        size: 30.r,
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          "You can create an account later to sync across devices when you are ready.",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 64.h),
          Container(
            width: 350.w,
            height: 52.h,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter as Guest ',
                  style: TextStyle(color: AppColors.white, fontSize: 16.sp),
                ),
                SizedBox(width: 8.w),
                Icon(Icons.arrow_forward, size: 20.r, color: AppColors.white),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignIn()));
            },
            child: Container(
              width: 350.w,
              height: 52.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(30.r),
                border: BoxBorder.all(color: AppColors.primary),
              ),
              child: Center(
                child: Text(
                  'Sign Up / Log In',
                  style: TextStyle(color: AppColors.primary, fontSize: 16.sp),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}