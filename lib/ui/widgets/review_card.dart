import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/utils/modals.dart';

class ReviewCard extends StatelessWidget {
  final bool? isBig;
  final ReviewItem reviewItem;
  const ReviewCard({super.key, this.isBig, required this.reviewItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isBig == true ? double.infinity : 233.w,
      height: isBig == true ? 133.h : 136.h,
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
        padding: EdgeInsets.symmetric(horizontal: isBig == true ? 16.w : 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: isBig == true ? 16.h : 12.h),
            Row(
              children: [
                Text(
                  reviewItem.nameClient,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Wrap(
                  spacing: 2.w,
                  children: [
                    for (var starBool in List.generate(5, (index) => index + 0.5 <= reviewItem.raiting))
                      SvgPicture.asset(
                        'assets/images/star_fill.svg',
                        // ignore: deprecated_member_use
                        color: starBool ? AppColors.blackColor : AppColors.greyDEColor,
                        height: 13.h,
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Text(
              reviewItem.date,
              style: TextStyle(
                color: AppColors.grey62Color,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Text(
              reviewItem.text,
              style: TextStyle(
                color: AppColors.grey62Color,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: isBig == true ? 16.h : 24.h),
          ],
        ),
      ),
    );
  }
}
