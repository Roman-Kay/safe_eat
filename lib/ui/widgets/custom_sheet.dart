import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/utils/colors.dart';

showCustomSheet(
  final BuildContext context,
  final Widget child,
) {
  showModalBottomSheet(
    useSafeArea: true,
    backgroundColor: AppColors.whiteColor,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(28.r),
      ),
    ),
    context: context,
    builder: (context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 36.h,
          width: double.infinity,
          child: Center(
            child: Container(
              width: 32.w,
              height: 4.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.grey9CColor,
              ),
            ),
          ),
        ),
        child,
      ],
    ),
  );
}
