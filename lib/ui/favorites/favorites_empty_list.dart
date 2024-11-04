import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/custom_navigator_bottom_bar.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';

class FavoritesEmptyList extends StatelessWidget {
  final void Function() setState;

  const FavoritesEmptyList({super.key, required this.setState});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 25.h),
            Text(
              'Вы еще не добавили понравившиеся заведения',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                color: AppColors.blackgrey35Color,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Нажмите на сердечко в карточке понравившегося заведения, чтобы добавить его в избранное',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: AppColors.grey62Color,
              ),
            ),
            SizedBox(height: 23.h),
            Padding(
              padding: EdgeInsets.only(left: 100.w),
              child: Transform.rotate(
                angle: pi * 2.04,
                child: SvgPicture.asset(
                  'assets/images/vector.svg',
                  height: 55.h,
                ),
              ),
            ),
            SizedBox(height: 33.h),
            Container(
              width: 266.w,
              height: 173.h,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                clipBehavior: Clip.hardEdge,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.infinity,
                    height: 115.h,
                    color: AppColors.greyF1Color,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(10.r),
                        child: Container(
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
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/images/heart.svg',
                              height: 20.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            WidgetButton(
              onTap: () {
                choossenIndex = 0;
                setState();
              },
              color: AppColors.orangeColor,
              text: 'Вернуться на главную',
            ),
            SizedBox(height: 34.h),
          ],
        ),
      ),
    );
  }
}
