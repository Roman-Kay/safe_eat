import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/payment/payment_choose_card_screen.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';

class OrdersMainScreen extends StatelessWidget {
  const OrdersMainScreen({super.key});

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
                            'Заказ',
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
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  children: [
                    SizedBox(height: 10.h),
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16.h),
                            ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              borderRadius: BorderRadius.circular(4.r),
                              child: Image.asset(
                                'assets/images/kul.jpeg',
                                width: double.infinity,
                                height: 128.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              'Кулинарная лавка',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackgrey35Color,
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/checkpoint.svg',
                                  height: 18.h,
                                ),
                                SizedBox(width: 14.w),
                                Expanded(
                                  child: Text(
                                    'Карамышевская наб., 26, корп. 1, Москва',
                                    style: TextStyle(
                                      color: AppColors.blackgrey35Color,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24.h),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            SizedBox(height: 24.h),
                            Row(
                              children: [
                                Text(
                                  'Комплект блюд «сюрприз»',
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
                            SizedBox(height: 24.h),
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
                            SizedBox(height: 24.h),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          Text(
                            'Итого',
                            style: TextStyle(
                              color: AppColors.blackgrey35Color,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '535₽',
                            style: TextStyle(
                              color: AppColors.blackgrey35Color,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 10.h),
              child: SafeArea(
                child: WidgetButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentChooseCardScreen(),
                      ),
                    );
                  },
                  text: 'Продолжить',
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
