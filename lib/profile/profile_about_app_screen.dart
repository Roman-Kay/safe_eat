// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/profile/profile_main_screen.dart';
import 'package:safe_eat/profile/profile_version_screen.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/form_for_button.dart';

class ProfileAboutAppScreen extends StatelessWidget {
  const ProfileAboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 50.h,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 40.r,
                        width: 40.r,
                        child: FormForButton(
                          onPressed: () => Navigator.pop(context),
                          borderRadius: BorderRadius.circular(30),
                          child: SvgPicture.asset(
                            'assets/images/arrow_android.svg',
                            height: 24.h,
                            color: AppColors.blackgrey35Color,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'О приложении',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22.sp,
                          color: AppColors.blackgrey35Color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Column(
                children: [
                  ProfileRowContainer(
                    name: 'Политика конфиденциальности',
                    onPressed: () {},
                  ),
                  ProfileRowContainer(
                    name: 'Пользовательское соглашение',
                    onPressed: () {},
                  ),
                  ProfileRowContainer(
                    name: 'Версия приложения',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileVersionScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
