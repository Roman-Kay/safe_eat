import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/data/categories.dart';
import 'package:safe_eat/ui/food_card/food_card_main_screen.dart';
import 'package:safe_eat/ui/widgets/card_listview.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/utils/modals.dart';

class HomeSomeListScreen extends StatefulWidget {
  final String name;

  const HomeSomeListScreen({super.key, required this.name});

  @override
  State<HomeSomeListScreen> createState() => _HomeSomeListScreenState();
}

class _HomeSomeListScreenState extends State<HomeSomeListScreen> {
  List<FoodItem> listOfFoodsItems = [];
  @override
  void initState() {
    if (widget.name == 'Рекомендации для вас') {
      // listOfFoodsItems = listOfRecomendationItems();
    } else {
      // listOfFoodsItems = listOfRecomendationItems();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView.builder(
          itemCount: listOfFoodsItems.length,
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.h,
            top: 20.h,
            bottom: 100.h,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackgrey4DColor,
                    ),
                  ),
                SizedBox(height: 25.h),
                CardListView(
                  foodItem: listOfFoodsItems[index],
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodCardMainScreen(
                        foodItem: listOfFoodsItems[index],
                      ),
                    ),
                  ),
                  fullWidth: true,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
