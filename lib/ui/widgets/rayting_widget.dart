import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/utils/colors.dart';

class RaytingWidget extends StatelessWidget {
  final double rayting;
  final int lengthRayting;
  final List<double> prossentsFiveLenght;

  const RaytingWidget({
    super.key,
    required this.rayting,
    required this.lengthRayting,
    required this.prossentsFiveLenght,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rayting.toString(),
                style: TextStyle(
                  color: AppColors.blackgrey35Color,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8.h),
              Wrap(
                spacing: 2.w,
                children: [
                  for (var starBool in List.generate(5, (index) => index + 0.5 <= 4.5))
                    SvgPicture.asset(
                      starBool ? 'assets/images/star_fill.svg' : 'assets/images/star_outline.svg',
                      height: 13.h,
                    ),
                ],
              ),
              SizedBox(height: 12.h),
              Text(
                '$lengthRayting оценок',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(width: 27.w),
          Expanded(
            child: Column(
              children: [
                for (var prossentCon in prossentsFiveLenght)
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                            final double width = constraints.maxWidth;
                            return Row(
                              children: [
                                Container(
                                  width: (width * prossentCon.toInt() / 100).w,
                                  height: 2,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(width: width - (width * prossentCon.toInt() / 100).w < 4.w ? 0 : 2.w),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 2,
                                    color: AppColors.greyDEColor,
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '${prossentCon.toInt()}%',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
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
    );
  }
}
