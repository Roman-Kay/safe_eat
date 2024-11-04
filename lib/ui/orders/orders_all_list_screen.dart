import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/orders/orders_info_screen.dart';
import 'package:safe_eat/ui/orders/orders_rate_sheet.dart';
import 'package:safe_eat/ui/widgets/custom_sheet.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/utils/colors.dart';

class OrdersAllListScreen extends StatelessWidget {
  const OrdersAllListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 50.h,
                width: double.infinity,
                color: AppColors.whiteColor,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
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
                    ),
                    Center(
                      child: Text(
                        'Заказы',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackgrey35Color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: index == 0 ? 0 : 8.h),
                  child: Container(
                    width: double.infinity,
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
                      borderRadius: BorderRadius.circular(10.r),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrdersInfoScreen(),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            SizedBox(height: 12.h),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Заказ №12345',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackgrey35Color,
                                      ),
                                    ),
                                    Text(
                                      '4 января 2023г. в 15:20',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey9CColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: 89.w,
                                  height: 35.h,
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
                                    child: Text(
                                      'Выкуплен',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackgrey35Color,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Text(
                                  'Пакет с продуктами «сюрприз»',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grey62Color,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '1500 руб.',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grey62Color,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 123.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10.r),
                                    border: Border.all(
                                      width: 1,
                                      color: AppColors.grey7FColor,
                                    ),
                                  ),
                                  child: FormForButton(
                                    borderRadius: BorderRadius.circular(10.r),
                                    onPressed: () {
                                      showCustomSheet(
                                        context,
                                        const OrdersRateSheet(),
                                      );
                                    },
                                    child: Center(
                                      child: Text(
                                        'Оставить отзыв',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.blackgrey35Color,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Wrap(
                                  spacing: 2.w,
                                  children: [
                                    for (var starBool in List.generate(5, (index) => index + 0.5 <= 0))
                                      SvgPicture.asset(
                                        starBool ? 'assets/images/star_fill.svg' : 'assets/images/star_outline.svg',
                                        height: 13.h,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
