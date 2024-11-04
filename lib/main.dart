import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/ui/auth/auth_welcome_screen.dart';
import 'package:safe_eat/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.whiteColor,
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor: AppColors.whiteColor),
        fontFamily: 'Avenir Next',
      ),
      home: ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) {
          return const AuthWelcomeScreen();
        },
      ),
    );
  }
}
