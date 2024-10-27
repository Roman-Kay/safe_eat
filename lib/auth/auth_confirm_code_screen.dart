import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/form_for_button.dart';
import 'package:safe_eat/widgets/custom_navigator_bottom_bar.dart';
import 'package:safe_eat/widgets/widget_button.dart';

class AuthConfirmCodeScreen extends StatefulWidget {
  const AuthConfirmCodeScreen({super.key});

  @override
  State<AuthConfirmCodeScreen> createState() => _AuthConfirmCodeScreenState();
}

class _AuthConfirmCodeScreenState extends State<AuthConfirmCodeScreen> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  final formKey = GlobalKey<FormState>();
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
              SizedBox(height: 50.h),
              Form(
                key: formKey,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    activeColor: AppColors.greyA7Color,
                    selectedColor: AppColors.greyA7Color,
                    inactiveColor: AppColors.greyA7Color,
                  ),
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15.w);
                  },
                  mainAxisAlignment: MainAxisAlignment.center,
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  cursorColor: Colors.black,
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  onCompleted: (value) {
                    if (value == '111111') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomNavigatorBottomBar(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 3),
                          content: Text(
                            'Неверный код',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      currentText = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 25.h),
              WidgetButton(
                onTap: currentText.length == 6 && currentText != '111111'
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AuthConfirmCodeScreen(),
                          ),
                        );
                      }
                    : null,
                color: AppColors.orangeColor.withOpacity(
                  currentText.length == 6 && currentText != '111111' ? 1 : 0.4,
                ),
                text: 'Отправить код повторно',
              ),
              SizedBox(height: 10.h),
              Center(
                child: FormForButton(
                  borderRadius: BorderRadius.circular(10.r),
                  onPressed: () => Navigator.pop(context),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    child: Text(
                      'Изменить номер телефона',
                      style: TextStyle(
                        fontSize: 18.sp,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.grey62Color,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey62Color,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
