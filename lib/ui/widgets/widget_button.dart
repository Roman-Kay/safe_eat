// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';

class WidgetButton extends StatelessWidget {
  WidgetButton({
    super.key,
    this.text,
    required this.onTap,
    this.color,
    this.child,
    this.gradient,
    this.textColor,
    this.radius,
    this.needBorder,
  });
  final String? text;
  final Widget? child;
  final Color? textColor;
  final bool? needBorder;

  final Function()? onTap;
  Color? color;
  Gradient? gradient;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 13.r),
        color: color,
        gradient: gradient,
        border: needBorder == true
            ? Border.all(
                width: 1.5,
                color: AppColors.greyCBColor,
              )
            : null,
      ),
      child: FormForButton(
        borderRadius: BorderRadius.circular(8.r),
        onPressed: onTap,
        child: text == null
            ? child ?? const SizedBox()
            : Center(
                child: Text(
                  text!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor ?? AppColors.whiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
      ),
    );
  }
}
