// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/card_listview.dart';
import 'package:safe_eat/widgets/form_for_button.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Мой адрес',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        height: 1,
                        color: AppColors.grey62Color,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: SvgPicture.asset(
                        'assets/images/arrow_bottom.svg',
                        width: 10.w,
                      ),
                    )
                  ],
                ),
                Text(
                  'ул. Бакунинская, д. 58 стр. 1',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: AppColors.blackgrey20Color,
                  ),
                ),
                SizedBox(height: 9.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/navigation.svg',
                      width: 15.w,
                    ),
                    SizedBox(width: 9.w),
                    Text(
                      'в пределах 2 км',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: AppColors.grey62Color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.w),
                      child: SizedBox(
                        height: 27.h,
                        child: FormForButton(
                          borderRadius: BorderRadius.circular(8),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Рекомендации для вас',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.sp,
                                  color: AppColors.blackgrey4DColor,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'Все',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: AppColors.blackgrey48Color,
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Transform.rotate(
                                angle: -pi / 2,
                                child: SvgPicture.asset(
                                  'assets/images/arrow_bottom.svg',
                                  width: 10.w,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(height: 12.h),
                    SizedBox(
                      height: 227 + (12 * 2).h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        padding: EdgeInsets.symmetric(horizontal: 22.w),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: index != 0 ? 10 : 0),
                            child: CardListView(),
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
