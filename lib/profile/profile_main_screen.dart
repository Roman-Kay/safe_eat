import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/profile/profile_about_app_screen.dart';
import 'package:safe_eat/profile/profile_change_name_sheet.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/custom_sheet.dart';
import 'package:safe_eat/widgets/form_for_button.dart';
import 'package:safe_eat/widgets/widget_button.dart';

class ProfileMainScreen extends StatelessWidget {
  const ProfileMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            FormForButton(
              borderRadius: BorderRadius.circular(8),
              onPressed: () {
                showCustomSheet(
                  context,
                  const ProfileChangeNameSheet(),
                );
              },
              child: Text(
                'Как вас зовут?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22.sp,
                  color: AppColors.blackColor,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              '+7 (917) 234 35-04',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: AppColors.grey62Color,
              ),
            ),
            SizedBox(height: 10.h),
            ProfileRowContainer(
              svg: 'assets/images/shopping_cart.svg',
              name: 'Заказы',
              onPressed: () {},
            ),
            ProfileRowContainer(
              svg: 'assets/images/notification.svg',
              name: 'Уведомления',
              isSwitch: true,
              onPressed: () {},
            ),
            ProfileRowContainer(
              svg: 'assets/images/moon.svg',
              name: 'Ночной режим',
              isSwitch: true,
              onPressed: () {},
            ),
            ProfileRowContainer(
              svg: 'assets/images/info.svg',
              name: 'O приложении',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileAboutAppScreen(),
                  ),
                );
              },
            ),
            const Spacer(),
            WidgetButton(
              onTap: () {},
              color: AppColors.orangeColor,
              text: 'Выйти',
            ),
            SizedBox(height: 15.h),
            WidgetButton(
              onTap: () {},
              needBorder: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/trash.svg',
                    height: 24.h,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'Удалить аккаунт',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: AppColors.grey62Color,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            WidgetButton(
              onTap: () {},
              needBorder: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/wallet.svg',
                    height: 24.h,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'Стать продавцом',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: AppColors.grey62Color,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}

class ProfileRowContainer extends StatefulWidget {
  final String? svg;
  final String name;
  final Function()? onPressed;
  final bool? isSwitch;

  const ProfileRowContainer({
    super.key,
    this.svg,
    required this.name,
    this.onPressed,
    this.isSwitch,
  });

  @override
  State<ProfileRowContainer> createState() => _ProfileRowContainerState();
}

class _ProfileRowContainerState extends State<ProfileRowContainer> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      child: FormForButton(
        onPressed: widget.onPressed,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  if (widget.svg != null)
                    SvgPicture.asset(
                      widget.svg!,
                      height: 24.h,
                    ),
                  if (widget.svg != null) SizedBox(width: 24.w),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: AppColors.grey62Color,
                    ),
                  ),
                  const Spacer(),
                  widget.isSwitch == true
                      ? CupertinoSwitch(
                          value: switchValue,
                          activeColor: AppColors.orangeColor,
                          onChanged: (bool? value) {
                            setState(() {
                              switchValue = value ?? false;
                            });
                          },
                        )
                      : SvgPicture.asset(
                          'assets/images/arrow.svg',
                          height: 15.h,
                        ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.greyEAColor,
            ),
          ],
        ),
      ),
    );
  }
}
