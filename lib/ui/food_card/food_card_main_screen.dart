import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/food_card/food_card_reviews_screen.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/rayting_widget.dart';
import 'package:safe_eat/ui/widgets/review_card.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/utils/modals.dart';

class FoodCardMainScreen extends StatelessWidget {
  final PlaceItem placeItem;
  const FoodCardMainScreen({super.key, required this.placeItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                width: double.infinity,
                height: 273.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      'assets/images/kul.jpeg',
                      width: double.infinity,
                      height: 273.h,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(160),
                        child: Image.asset(
                          'assets/images/icon_lavka.jpeg',
                          height: 160.r,
                          width: 160.r,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.w, top: 16.h),
                        child: Container(
                          height: 35.r,
                          width: 35.r,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10.r),
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
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
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
                                      '${placeItem.lenth > 5 ? '5+' : placeItem.lenth} шт.',
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
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: FormForButton(
                                onPressed: () {},
                                borderRadius: BorderRadius.circular(10.r),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/star_fill.svg',
                                        height: 13.h,
                                        color: AppColors.yellowColor,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        '${placeItem.raiting} (${245})',
                                        style: TextStyle(
                                          color: AppColors.blackgrey35Color,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    Row(
                      children: [
                        Text(
                          placeItem.name,
                          style: TextStyle(
                            color: AppColors.blackgrey35Color,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${placeItem.price}₽',
                          style: TextStyle(
                            color: AppColors.blackgrey26Color,
                            fontSize: 20.sp,
                            height: 1.1,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          '${placeItem.oldPrice}₽',
                          style: TextStyle(
                            color: AppColors.greyB0Color,
                            fontSize: 16.sp,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.greyB0Color,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      placeItem.food,
                      style: TextStyle(
                        color: AppColors.greyB0Color,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    RichText(
                      text: TextSpan(
                        text: 'Забрать',
                        style: TextStyle(
                          color: AppColors.grey62Color,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: ' с 9:00 до 12:30',
                            style: TextStyle(
                              color: AppColors.grey62Color,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.greyEAColor,
                    ),
                    SizedBox(height: 34.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/checkpoint.svg',
                          height: 18.h,
                        ),
                        SizedBox(width: 14.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              placeItem.food,
                              style: TextStyle(
                                color: AppColors.blackgrey35Color,
                                fontSize: 15.sp,
                                height: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Маршрут',
                              style: TextStyle(
                                color: AppColors.orangeColor,
                                fontSize: 14.sp,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.orangeColor,
                                height: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.greyEAColor,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Что внутри?',
                      style: TextStyle(
                        color: AppColors.blackgrey35Color,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'Курица в томатном соусе, микс из свежих листьев, отварной картофель, ванильные пирожные, лимонад',
                      style: TextStyle(
                        color: AppColors.grey62Color,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: AppColors.greyEAColor,
                    ),
                    SizedBox(height: 24.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FoodCardReviewsScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          const RaytingWidget(
                            rayting: 4.5,
                            lengthRayting: 35,
                            prossentsFiveLenght: [99, 15, 0, 0, 0],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FoodCardReviewsScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 156.h,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 0 : 16.w),
                        child: const ReviewCard(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: WidgetButton(
                  onTap: () {},
                  text: 'Забронировать',
                  color: AppColors.orangeColor,
                ),
              ),
              SizedBox(height: 18.h + MediaQuery.of(context).padding.bottom),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.w),
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
                      height: 20.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
