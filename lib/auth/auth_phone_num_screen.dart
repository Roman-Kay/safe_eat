import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/auth/auth_confirm_code_screen.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/form_for_button.dart';
import 'package:safe_eat/widgets/widget_button.dart';

MaskedTextController phoneController = MaskedTextController(mask: '(000) 000 00-00');

class AuthPhoneNumScreen extends StatefulWidget {
  const AuthPhoneNumScreen({super.key});

  @override
  State<AuthPhoneNumScreen> createState() => _AuthPhoneNumScreenState();
}

class _AuthPhoneNumScreenState extends State<AuthPhoneNumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Text(
                'Введите номер телефона',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22.sp,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Чтобы войти или зарегистрироваться',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: 28.h),
              TextField(
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey62Color,
                  fontSize: 15.sp,
                  height: 1,
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {});
                },
                controller: phoneController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: const BorderSide(
                      width: 2,
                      color: AppColors.grey9CColor,
                    ),
                  ),
                  prefixIconConstraints: const BoxConstraints(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: const BorderSide(
                      color: AppColors.grey9CColor,
                      width: 1,
                    ),
                  ),
                  labelText: 'Номер телефона',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyA7Color,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 21.h,
                    horizontal: 10.w,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 14.w,
                      right: 2.w,
                    ),
                    child: Text(
                      '+ 7',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey62Color,
                        fontSize: 15.sp,
                        height: 1,
                      ),
                    ),
                  ),
                  suffixIcon: UnconstrainedBox(
                    child: CircleAvatar(
                      radius: 10.r,
                      backgroundColor: AppColors.grey9CColor,
                      child: FormForButton(
                        borderRadius: BorderRadius.circular(20),
                        onPressed: () => setState(() {
                          // controller.text = '';
                        }),
                        child: const Center(
                          child: Icon(
                            Icons.close_rounded,
                            size: 15,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              WidgetButton(
                onTap: phoneController.text.length == 15
                    ? () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AuthConfirmCodeScreen(),
                          ),
                        )
                    : null,
                color: AppColors.orangeColor.withOpacity(
                  phoneController.text.length == 15 ? 1 : 0.4,
                ),
                text: 'Продолжить',
              )
            ],
          ),
        ),
      ),
    );
  }
}
