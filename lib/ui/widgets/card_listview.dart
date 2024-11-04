// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/data/plases.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/utils/modals.dart';

class CardListView extends StatefulWidget {
  final FoodItem foodItem;
  final bool? fullWidth;
  final Function()? onPressed;

  const CardListView({
    super.key,
    required this.foodItem,
    this.fullWidth,
    this.onPressed,
  });

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  PlaceItem? place;
  @override
  void initState() {
    // place = Places.listOfAllPlaces.where((var placeItem) => widget.foodItem.placeId == placeItem.id).first;
    // print(place);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return place == null
        ? SizedBox()
        : Stack(
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
                                  widget.foodItem.name,
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
                                  '${getAverageValue(place!)}',
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
                                  widget.foodItem.name,
                                  style: TextStyle(
                                    color: AppColors.grey62Color,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '${widget.foodItem.price}₽',
                                  style: TextStyle(
                                    color: AppColors.blackgrey26Color,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '${widget.foodItem.oldPrice}₽',
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
            ],
          );
  }

  double getAverageValue(PlaceItem placeItem) {
    double allRaiting = 0;
    for (var item in placeItem.reviewItems) {
      allRaiting = allRaiting + item.raiting;
    }
    allRaiting = allRaiting / placeItem.reviewItems.length;
    return allRaiting;
  }
}
