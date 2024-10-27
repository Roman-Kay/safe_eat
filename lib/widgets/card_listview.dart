import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/form_for_button.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 330.w,
        height: 227.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey7FColor.withOpacity(0.25),
              blurRadius: 8.r,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/tamada.jpg',
                    height: 145.h,
                    width: 330.w,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    child: Row(
                      children: [
                        Container(
                          height: 35.r,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: FormForButton(
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(10.r),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Center(
                                child: Text(
                                  '4 шт.',
                                  style: TextStyle(
                                    color: AppColors.blackgrey35Color,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
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
                          ),
                          child: FormForButton(
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(10.r),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/images/heart.svg',
                                  height: 18.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        Text(
                          'Тамада',
                          style: TextStyle(
                            color: AppColors.blackgrey35Color,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/star_fill.svg',
                          height: 13.h,
                          color: AppColors.yellowColor,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          '4.3',
                          style: TextStyle(
                            color: AppColors.blackgrey35Color,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Обед',
                          style: TextStyle(
                            color: AppColors.grey62Color,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '690₽',
                          style: TextStyle(
                            color: AppColors.blackgrey26Color,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          '989₽',
                          style: TextStyle(
                            color: AppColors.greyB0Color,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.greyB0Color,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),
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
