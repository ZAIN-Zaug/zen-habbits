import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zen_habits_app/views/sign_in/sign_in.dart';
import 'package:zen_habits_app/theme/color.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 48.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(),
              SizedBox(
                width: 110.r,
                height: 110.r,
                child: Image.asset('assets/images/Brand Icon (Subtle).png'),
              ),
              Text(
                'Create Account',
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight(1000)),
              ),
              Text(
                'Begin your journey to calm productivity.',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight(350)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48.h, left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.textHint,
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 24.r,
                          color: AppColors.border,
                        ),
                        filled: true,
                        fillColor: AppColors.inputFill,
                        contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: AppColors.primaryFocus,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8.h, left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.textHint,
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 24.r,
                          color: AppColors.border,
                        ),
                        filled: true,
                        fillColor: AppColors.inputFill,
                        contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: AppColors.primaryFocus,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Create a Password',
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.textHint,
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 24.r,
                          color: AppColors.border,
                        ),
                        filled: true,
                        fillColor: AppColors.inputFill,
                        contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: AppColors.primaryFocus,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 16.h),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 56.w),
                  width: 350.w,
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
                  width: 350.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30.r),
                    border: BoxBorder.all(color: AppColors.primary),
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
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 140.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?  ',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 18.sp,
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));

                      },
                      child: Text(
                        'Log In',
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
            ],
          ),
        ),
      ),
    );
  }
}