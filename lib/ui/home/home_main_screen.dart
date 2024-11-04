// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/data/categories.dart';
import 'package:safe_eat/ui/food_card/food_card_main_screen.dart';
import 'package:safe_eat/ui/home/home_some_list_screen.dart';
import 'package:safe_eat/ui/widgets/custom_navigator_bottom_bar.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/ui/widgets/card_listview.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';

class HomeMainScreen extends StatefulWidget {
  final void Function() setState;

  const HomeMainScreen({super.key, required this.setState});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Мой адрес',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        height: 1,
                        color: AppColors.grey62Color,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: SvgPicture.asset(
                        'assets/images/arrow_bottom.svg',
                        width: 10.w,
                      ),
                    )
                  ],
                ),
                Text(
                  'ул. Бакунинская, д. 58 стр. 1',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: AppColors.blackgrey20Color,
                  ),
                ),
                SizedBox(height: 9.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/navigation.svg',
                      width: 15.w,
                    ),
                    SizedBox(width: 9.w),
                    Text(
                      'в пределах 2 км',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: AppColors.grey62Color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listOfClassOfCategoriesItem.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      height: 27.h,
                      child: FormForButton(
                        borderRadius: BorderRadius.circular(8),
                        onPressed: i == 2
                            ? () {
                                choossenIndex = 2;
                                widget.setState();
                              }
                            : () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeSomeListScreen(
                                      name: listOfClassOfCategoriesItem[i].name,
                                    ),
                                  ),
                                );
                              },
                        child: Row(
                          children: [
                            Text(
                              listOfClassOfCategoriesItem[i].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                                color: AppColors.blackgrey4DColor,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              'Все',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: AppColors.blackgrey48Color,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Transform.rotate(
                              angle: -pi / 2,
                              child: SvgPicture.asset(
                                'assets/images/arrow_bottom.svg',
                                width: 10.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 227 + (12 * 2).h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfClassOfCategoriesItem[i].list.length,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: index != 0 ? 10 : 0),
                          child: CardListView(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoodCardMainScreen(
                                  foodItem: listOfClassOfCategoriesItem[i].list[index],
                                ),
                              ),
                            ),
                            foodItem: listOfClassOfCategoriesItem[i].list[index],
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
