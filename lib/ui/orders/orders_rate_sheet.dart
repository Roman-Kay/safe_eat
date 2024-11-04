import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';

class OrdersRateSheet extends StatefulWidget {
  const OrdersRateSheet({super.key});

  @override
  State<OrdersRateSheet> createState() => _OrdersRateSheetState();
}

class _OrdersRateSheetState extends State<OrdersRateSheet> {
  int raiting = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
              'Оцените заказ №12344',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Поставьте оценку от 1 до 5',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(height: 100.h),
            Center(
              child: Text(
                '${raiting + 1}',
                style: TextStyle(
                  fontSize: 56.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor.withOpacity(raiting == -1 ? 0 : 1),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Center(
              child: Wrap(
                spacing: 25.w,
                children: [
                  for (var item in [0, 1, 2, 3, 4])
                    FormForButton(
                      borderRadius: BorderRadius.circular(12),
                      onPressed: () {
                        raiting = raiting == item ? -1 : item;
                        setState(() {});
                      },
                      child: SvgPicture.asset(
                        item <= raiting ? 'assets/images/star_fill.svg' : 'assets/images/star_outline.svg',
                        height: 36.h,
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: TextFormField(
                controller: TextEditingController(),
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor,
                ),
                minLines: 1,
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: 'Расскажите о своих впечатлениях',
                  isDense: true,
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey9CColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.greyA7Color,
            ),
            const Spacer(),
            WidgetButton(
              needBorder: raiting == -1,
              onTap: () {},
              color: raiting == -1 ? AppColors.whiteColor : AppColors.orangeColor,
              textColor: raiting == -1 ? AppColors.grey62Color : AppColors.whiteColor,
              text: raiting == -1 ? 'Закрыть' : 'Продолжить',
            ),
            SizedBox(height: 18.h + MediaQuery.of(context).padding.bottom),
          ],
        ),
      ),
    );
  }
}
