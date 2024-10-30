import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/ui/auth/auth_phone_num_screen.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';

class AuthWelcomeScreen extends StatelessWidget {
  const AuthWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome_screen_back.png',
            width: 393.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Спаси Покушать',
                    style: TextStyle(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Text(
                    'Качественные продукты по привлекательным ценам и снижение продовольственных отходов',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyE7Color,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  WidgetButton(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AuthPhoneNumScreen(),
                      ),
                    ),
                    text: 'Начать',
                    color: AppColors.orangeColor,
                  ),
                  SizedBox(height: 13.h),
                  Center(
                    child: FormForButton(
                      borderRadius: BorderRadius.circular(30.r),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                        child: Text(
                          'Зарегистрироваться как продавец',
                          style: TextStyle(
                            fontSize: 18.sp,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
