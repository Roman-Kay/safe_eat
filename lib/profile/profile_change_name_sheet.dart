import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_eat/utils/colors.dart';
import 'package:safe_eat/widgets/widget_button.dart';

class ProfileChangeNameSheet extends StatefulWidget {
  const ProfileChangeNameSheet({super.key});

  @override
  State<ProfileChangeNameSheet> createState() => _ProfileChangeNameSheetState();
}

class _ProfileChangeNameSheetState extends State<ProfileChangeNameSheet> {
  final FocusNode focusNode = FocusNode();
  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Center(
            child: Text(
              'Имя',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                color: AppColors.greyCBColor,
              ),
            ),
          ),
          Center(
            child: TextFormField(
              controller: TextEditingController(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 36.sp,
                color: AppColors.blackgrey35Color,
              ),
              cursorColor: AppColors.orangeColor,
              textAlign: TextAlign.center,
              onTapOutside: (b) {
                focusNode.requestFocus();
              },
              cursorHeight: 34.h,
              focusNode: focusNode,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: WidgetButton(
              onTap: () {
                Navigator.pop(context);
              },
              color: AppColors.orangeColor,
              text: 'Сохранить',
            ),
          ),
          SafeArea(
            child: SizedBox(
              height: 30.h + MediaQuery.of(context).viewInsets.bottom,
            ),
          ),
        ],
      ),
    );
  }
}
