import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/payment/payment_add_card_sheet.dart';
import 'package:safe_eat/ui/widgets/custom_sheet.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';

class PaymentChooseCardScreen extends StatelessWidget {
  const PaymentChooseCardScreen({super.key});

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
                            'Оплата',
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
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: index == 0 ? 0 : 16.h),
                          child: Container(
                            width: double.infinity,
                            height: 50.h,
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
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.w),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/master_card.svg',
                                      height: 17.h,
                                    ),
                                    SizedBox(width: 32.w),
                                    Row(
                                      children: [
                                        for (var item in [0, 1, 2, 3])
                                          Padding(
                                            padding: EdgeInsets.only(left: item == 0 ? 0 : 5.w),
                                            child: CircleAvatar(
                                              radius: 2.r,
                                              backgroundColor: AppColors.blackgrey35Color,
                                            ),
                                          ),
                                      ],
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      '6347',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackgrey35Color,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 20.r,
                                      height: 20.r,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 2,
                                          color: AppColors.blackgrey35Color,
                                        ),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 10.r,
                                          height: 10.r,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.blackgrey35Color,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 32.h),
                    FormForButton(
                      onPressed: () {
                        showCustomSheet(
                          context,
                          const PaymentAddCardSheet(),
                        );
                      },
                      borderRadius: BorderRadius.circular(10.r),
                      child: Row(
                        children: [
                          SizedBox(width: 2.w),
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
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/plus.svg',
                                height: 24.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Text(
                            'Добавить новую карту',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackgrey35Color,
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
                  onTap: () {},
                  text: 'Оплатить',
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
