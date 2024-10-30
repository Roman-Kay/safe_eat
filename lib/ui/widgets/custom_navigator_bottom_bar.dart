// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/home/home_main_screen.dart';
import 'package:safe_eat/ui/profile/profile_main_screen.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';

class NavItem {
  final String text;
  final String svg;
  final int index;
  final Widget screen;

  NavItem({
    required this.text,
    required this.svg,
    required this.index,
    required this.screen,
  });
}

class CustomNavigatorBottomBar extends StatefulWidget {
  const CustomNavigatorBottomBar({super.key});

  @override
  State<CustomNavigatorBottomBar> createState() => _CustomNavigatorBottomBarState();
}

class _CustomNavigatorBottomBarState extends State<CustomNavigatorBottomBar> {
  final List<NavItem> listOfNavItem = [
    NavItem(
      svg: 'assets/images/home.svg',
      text: 'Главная',
      index: 0,
      screen: const HomeMainScreen(),
    ),
    NavItem(
      svg: 'assets/images/search.svg',
      text: 'Карта',
      index: 1,
      screen: SizedBox(),
    ),
    NavItem(
      svg: 'assets/images/heart.svg',
      text: 'Избранное',
      index: 2,
      screen: SizedBox(),
    ),
    NavItem(
      svg: 'assets/images/profile.svg',
      text: 'Профиль',
      index: 3,
      screen: ProfileMainScreen(),
    ),
  ];
  int choossenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfNavItem[choossenIndex].screen,
      backgroundColor: AppColors.whiteColor,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.greyFCColor,
          border: Border(
            top: BorderSide(
              color: AppColors.greyEAColor,
              width: 1,
            ),
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            height: 50.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var item in listOfNavItem)
                    navItem(
                      item,
                      () {
                        choossenIndex = item.index;
                        setState(() {});
                      },
                      choossenIndex,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

navItem(NavItem navItem, void Function()? onPressed, int choossenIndex) {
  return SizedBox(
    height: 50.h,
    width: 85.w,
    child: FormForButton(
      borderRadius: BorderRadius.circular(100),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            navItem.svg,
            height: 20.h,
            color: choossenIndex == navItem.index ? AppColors.blackgrey2EColor : AppColors.grey9CColor,
          ),
          SizedBox(height: 8.h),
          Text(
            navItem.text,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              height: 1,
              color: choossenIndex == navItem.index ? AppColors.blackgrey2EColor : AppColors.grey9CColor,
            ),
          ),
        ],
      ),
    ),
  );
}
