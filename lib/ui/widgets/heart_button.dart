import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/data/categories.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/utils/modals.dart';

// ignore: must_be_immutable
class HeartButton extends StatelessWidget {
  final FoodItem foodItem;
  final void Function() setState;

  HeartButton({super.key, required this.foodItem, required this.setState});

  @override
  Widget build(BuildContext context) {
    return FormForButton(
      onPressed: () {
        List<FoodItem> list = listOfClassOfCategoriesItem[2].list;
        if (listOfClassOfCategoriesItem[2].list.any((element) => element == foodItem)) {
          list.remove(foodItem);
        } else {
          list.add(foodItem);
        }
        listOfClassOfCategoriesItem[2] = ClassOfPlacesItem(
          name: listOfClassOfCategoriesItem[2].name,
          list: list,
        );
        setState();
      },
      borderRadius: BorderRadius.circular(10.r),
      child: Center(
        child: SvgPicture.asset(
          listOfClassOfCategoriesItem[2].list.any((element) => element == foodItem)
              ? 'assets/images/heart_fill.svg'
              : 'assets/images/heart.svg',
          height: 20.h,
        ),
      ),
    );
  }
}
