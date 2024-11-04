import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';

class FoodCardInfoScreen extends StatelessWidget {
  const FoodCardInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 50.h,
                    width: double.infinity,
                    color: AppColors.whiteColor,
                    child: Row(
                      children: [
                        Container(
                          height: 35.r,
                          width: 35.r,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: FormForButton(
                            onPressed: () => Navigator.pop(context),
                            borderRadius: BorderRadius.circular(10.r),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/arrow_android.svg',
                                height: 24.h,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 35.r,
                          width: 35.r,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.grey7FColor.withOpacity(0.25),
                                blurRadius: 8.r,
                                offset: const Offset(1, 1),
                              ),
                            ],
                          ),
                          child: FormForButton(
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(10.r),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/heart.svg',
                                height: 20.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: Column(
                        children: [
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Container(
                                height: 51.r,
                                width: 51.r,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.grey7FColor.withOpacity(0.25),
                                      blurRadius: 8.r,
                                      offset: const Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  clipBehavior: Clip.hardEdge,
                                  borderRadius: BorderRadius.circular(51.r),
                                  child: Image.asset(
                                    'assets/images/icon_lavka.jpeg',
                                    height: 51.r,
                                    width: 51.r,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 18.w),
                              Text(
                                'Кулинарная лавка',
                                style: TextStyle(
                                  color: AppColors.blackgrey35Color,
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/star_fill.svg',
                                height: 13.h,
                                color: AppColors.yellowColor,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                '${4.5} (${245})',
                                style: TextStyle(
                                  color: AppColors.blackgrey35Color,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 55.h),
                          item(
                            'checkpoint',
                            'Адрес',
                            'Карамышевская наб., 26, корп. 1, Москва',
                            'Маршрут',
                          ),
                          SizedBox(height: 40.h),
                          item(
                            'phone',
                            'Контакты',
                            '8 (800) 101-10-01',
                            'dixy.ru',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Container(
                      width: double.infinity,
                      height: 228.h,
                      color: AppColors.greyCBColor,
                      child: Center(
                        child: Text(
                          'Тут будет карта',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 10.h),
              child: SafeArea(
                child: WidgetButton(
                  onTap: () {},
                  text: 'Открыть в картах',
                  color: AppColors.orangeColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget item(
  String nameSvg,
  String textFirst,
  String textSecond,
  String textThird,
) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SvgPicture.asset(
        'assets/images/$nameSvg.svg',
        height: 24.h,
      ),
      SizedBox(width: 14.w),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textFirst,
            style: TextStyle(
              color: AppColors.blackgrey26Color,
              fontSize: 18.sp,
              height: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            textSecond,
            style: TextStyle(
              color: AppColors.blackgrey35Color,
              fontSize: 15.sp,
              height: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            textThird,
            style: TextStyle(
              color: AppColors.orangeColor,
              fontSize: 14.sp,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.orangeColor,
              height: 1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ],
  );
}
