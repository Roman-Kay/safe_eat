import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/rayting_widget.dart';
import 'package:safe_eat/ui/widgets/review_card.dart';
import 'package:safe_eat/utils/colors.dart';

import '../../utils/modals.dart';

class FoodCardReviewsScreen extends StatelessWidget {
  final PlaceItem placeItem;
  const FoodCardReviewsScreen({super.key, required this.placeItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Container(
              height: 50.h,
              width: double.infinity,
              color: AppColors.whiteColor,
              child: Padding(
                padding: EdgeInsets.only(left: 14.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40.r,
                    width: 40.r,
                    decoration: BoxDecoration(
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
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                SizedBox(height: 15.h),
                RaytingWidget(
                  rayting: getAverageValue(placeItem),
                  lengthRayting: placeItem.reviewItems.length,
                  prossentsFiveLenght: const [85, 15, 0, 0, 0],
                ),
                SizedBox(height: 35.h),
                Text(
                  'Отзывы',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackgrey35Color,
                  ),
                ),
                SizedBox(height: 24.h),
                SafeArea(
                  top: false,
                  child: ListView.builder(
                    itemCount: placeItem.reviewItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: index == 0 ? 0 : 16.h),
                        child: ReviewCard(
                          reviewItem: placeItem.reviewItems[index],
                          isBig: true,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 18.h),
              ],
            ),
          )
        ],
      ),
    );
  }

  double getAverageValue(PlaceItem placeItem) {
    double allRaiting = 0;
    for (var item in placeItem.reviewItems) {
      allRaiting = allRaiting + item.raiting;
    }
    allRaiting = allRaiting / placeItem.reviewItems.length;
    allRaiting = allRaiting - allRaiting % 0.01;

    return allRaiting;
  }
}
