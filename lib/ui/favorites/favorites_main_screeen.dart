import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/favorites/favorites_empty_list.dart';
import 'package:safe_eat/ui/food_card/food_card_main_screen.dart';
import 'package:safe_eat/ui/widgets/card_listview.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/utils/modals.dart';
import '../../data/categories.dart';

// ignore: must_be_immutable
class FavoritesMainScreeen extends StatefulWidget {
  final void Function() setState;

  const FavoritesMainScreeen({super.key, required this.setState});

  @override
  State<FavoritesMainScreeen> createState() => _FavoritesMainScreeenState();
}

class _FavoritesMainScreeenState extends State<FavoritesMainScreeen> {
  final TextEditingController searchController = TextEditingController();
  List<FoodItem> searchedItems = [];

  void _searchFood() {
    final query = searchController.text;
    if (query.isNotEmpty) {
      searchedItems = listOfClassOfCategoriesItem[2].list.where((FoodItem foodItem) {
        return foodItem.name.toLowerCase().contains(query.toLowerCase()) ||
            foodItem.place.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      searchedItems = listOfClassOfCategoriesItem[2].list;
    }
    setState(() {});
  }

  @override
  void initState() {
    _searchFood();
    searchController.addListener(() {
      _searchFood();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60.h,
            color: AppColors.whiteColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 42.h,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      width: 1,
                      color: AppColors.greyD5Color,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/search_2.svg',
                          height: 22.sp,
                        ),
                        SizedBox(width: 24.w),
                        Expanded(
                          child: TextFormField(
                            onChanged: (onChanged) {},
                            cursorColor: AppColors.grey9CColor,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blackgrey35Color,
                            ),
                            controller: searchController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Поиск',
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyA7Color,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (listOfClassOfCategoriesItem[2].list.isEmpty)
            FavoritesEmptyList(
              setState: () => widget.setState(),
            )
          else
            Expanded(
              child: ListView(
                children: [
                  ListView.builder(
                    itemCount: searchedItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      bottom: 100.h,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 25.h),
                        child: CardListView(
                          foodItem: searchedItems[index],
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodCardMainScreen(
                                foodItem: searchedItems[index],
                              ),
                            ),
                          ),
                          fullWidth: true,
                          setState: widget.setState,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
