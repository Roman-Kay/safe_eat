import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/custom_sheet.dart';
import 'package:safe_eat/utils/colors.dart';

class OrdersInfoScreen extends StatelessWidget {
  const OrdersInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DraggableScrollableController sheetController = DraggableScrollableController();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.orangeColor,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: SafeArea(
                  child: Text(
                    'Тут будет карта',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackgrey35Color,
                    ),
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            controller: sheetController,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey7FColor.withOpacity(0.25),
                      blurRadius: 8.r,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const ClampingScrollPhysics(),
                    child: CustomSheet(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            Text(
                              'Заказ №12344',
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackgrey35Color,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              children: [
                                Container(
                                  width: 35.r,
                                  height: 35.r,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: AppColors.whiteColor,
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
                                      'assets/images/clock.svg',
                                      height: 24.h,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                Text(
                                  'Ожидает вас',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.blackgrey35Color,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24.h),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.grey7FColor.withOpacity(0.25),
                                    blurRadius: 8.r,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 24.h),
                                        Text(
                                          'Кулинарная лавка',
                                          style: TextStyle(
                                            color: AppColors.blackgrey35Color,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 16.h),
                                        Row(
                                          children: [
                                            Text(
                                              'Сервисный сбор',
                                              style: TextStyle(
                                                color: AppColors.grey62Color,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '790',
                                              style: TextStyle(
                                                color: AppColors.blackgrey35Color,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '₽',
                                              style: TextStyle(
                                                color: AppColors.blackgrey35Color,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 12.h),
                                        Row(
                                          children: [
                                            Text(
                                              'Сервисный сбор',
                                              style: TextStyle(
                                                color: AppColors.grey62Color,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              '45',
                                              style: TextStyle(
                                                color: AppColors.blackgrey35Color,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '₽',
                                              style: TextStyle(
                                                color: AppColors.blackgrey35Color,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: AppColors.greyEAColor,
                                  ),
                                  SizedBox(height: 16.h),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Итого',
                                          style: TextStyle(
                                            color: AppColors.blackgrey35Color,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '535₽',
                                          style: TextStyle(
                                            color: AppColors.blackgrey35Color,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                ],
                              ),
                            ),
                            SizedBox(height: 34.h),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Заберите с 11:30 до 13:30',
                                style: TextStyle(
                                  color: AppColors.blackgrey35Color,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h + MediaQuery.of(context).padding.bottom),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
