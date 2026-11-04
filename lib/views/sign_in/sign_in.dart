import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zen_habits_app/views/sign_Up/sign_up.dart';
import 'package:zen_habits_app/theme/color.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.primary,
                size: 28.r,
              ),
            ),
            SizedBox(width: 82.w),
            Text(
              'ZenHabits',
              style: TextStyle(
                fontSize: 24.sp,
                color: AppColors.primary,
                fontWeight: FontWeight(700),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 348.w,
            height: 598.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 28.sp,
                    fontWeight: FontWeight(700),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Continue your journey to Zen Productivity.',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight(400),
                  ),
                ),
                SizedBox(height: 45.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight(500),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                    right: 24.w,
                    top: 8.h,
                    bottom: 24.h,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'name@example.com',
                      hintStyle: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.border,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 24.r,
                        color: AppColors.border,
                      ),
                      fillColor: AppColors.inputFill,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          topLeft: Radius.circular(10.r),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          topLeft: Radius.circular(10.r),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, right: 187.w),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight(500),
                        ),
                      ),
                    ),
                    Text(
                      'Forgot?',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                    right: 24.w,
                    top: 8.h,
                    bottom: 22.h,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '••••••••',
                      hintStyle: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.border,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 26.r,
                        color: AppColors.border,
                      ),
                      fillColor: AppColors.inputFill,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          topLeft: Radius.circular(10.r),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          topLeft: Radius.circular(10.r),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 56.w),
                    width: 300.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(30.r),
                      border: BoxBorder.all(color: AppColors.border),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10.w),
                        Text(
                          'Sign in',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Icon(Icons.login, color: AppColors.white),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 8.h),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 56.w),
                    width: 300.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(30.r),
                      border: BoxBorder.all(color: AppColors.primary),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.auto_awesome_outlined,
                          size: 20.r,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Send Magic Link instead',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 13.sp,
                            fontWeight: FontWeight(1000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0.h, bottom: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?  ",
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 18.sp,
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16.sp,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
