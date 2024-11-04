// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/heart_button.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/utils/modals.dart';

class CardListView extends StatefulWidget {
  final FoodItem foodItem;
  final bool? fullWidth;
  final Function()? onPressed;
  final void Function()? setState;

  const CardListView({
    super.key,
    required this.foodItem,
    this.fullWidth,
    this.onPressed,
    this.setState,
  });

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: widget.fullWidth == true ? double.infinity : 330.w,
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
                      width: widget.fullWidth == true ? double.infinity : 330.w,
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
                                    '${widget.foodItem.length > 5 ? '5+' : widget.foodItem.length} шт.',
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
                        ],
                      ),
                    ),
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
                            widget.foodItem.place.name,
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
                            '${getAverageValue(widget.foodItem.place)}',
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
                          Expanded(
                            child: Text(
                              widget.foodItem.name,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.grey62Color,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            '${widget.foodItem.price.floor()}₽',
                            style: TextStyle(
                              color: AppColors.blackgrey26Color,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            '${widget.foodItem.oldPrice.floor()}₽',
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
        SizedBox(
          width: widget.fullWidth == true ? double.infinity : 330.w,
          height: 227.h,
          child: FormForButton(
            onPressed: widget.onPressed,
            borderRadius: BorderRadius.circular(15.r),
            child: const SizedBox(),
          ),
        ),
        SizedBox(
          width: widget.fullWidth == true ? double.infinity : 330.w,
          height: 227.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 35.r,
                width: 35.r,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: HeartButton(
                  foodItem: widget.foodItem,
                  setState: widget.setState == null ? () => setState(() {}) : widget.setState!,
                ),
              ),
            ),
          ),
        ),
      ],
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
