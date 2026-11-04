import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zen_habits_app/views/get_started/get_started.dart';
import 'package:zen_habits_app/views/sign_Up/sign_up.dart';


void main() {
  runApp(const ZenHabits());
}


class ZenHabits extends StatelessWidget {
  const ZenHabits({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStarted(),
      ),
    );
  }
}





