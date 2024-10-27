// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/form_for_button.dart';

class ProfileVersionScreen extends StatelessWidget {
  const ProfileVersionScreen({super.key});

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
                height: 55.h,
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
                        'Версия приложения',
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                children: [
                  SizedBox(height: 15.h),
                  Text(
                    'Версия приложения: 2.0.1\n',
                    style: textStyleBig(),
                  ),
                  Text(
                    'Обновления:',
                    style: textStyleBig(),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' •  ',
                        style: textStyleSmall(),
                      ),
                      Expanded(
                        child: Text(
                          'Улучшена стабильность и производительность.',
                          style: textStyleSmall(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' •  ',
                        style: textStyleSmall(),
                      ),
                      Expanded(
                        child: Text(
                          'Внесены изменения в пользовательский интерфейс для улучшения навигации.',
                          style: textStyleSmall(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' •  ',
                        style: textStyleSmall(),
                      ),
                      Expanded(
                        child: Text(
                          'Исправлены ошибки, связанные с оплатой через мобильное приложение.',
                          style: textStyleSmall(),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\nМы прилагаем максимум усилий для улучшения вашего опыта использования "Спаси покушать". Если у вас есть предложения или замечания, не стесняйтесь связаться с нами через раздел обратной связи в приложении. Благодарим за использование нашего сервиса!',
                    style: textStyleSmall(),
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

TextStyle textStyleBig() {
  return TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.blackgrey35Color,
  );
}

TextStyle textStyleSmall() {
  return TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.blackgrey35Color,
  );
}
