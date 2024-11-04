import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safe_eat/ui/widgets/form_for_button.dart';
import 'package:safe_eat/ui/widgets/widget_button.dart';
import 'package:safe_eat/utils/colors.dart';

class PaymentAddCardSheet extends StatefulWidget {
  const PaymentAddCardSheet({super.key});

  @override
  State<PaymentAddCardSheet> createState() => _PaymentAddCardSheetState();
}

class _PaymentAddCardSheetState extends State<PaymentAddCardSheet> {
  FocusNode focusNodeNumCard = FocusNode();
  FocusNode focusNodeCVV = FocusNode();
  FocusNode focusNodeDateEnd = FocusNode();
  MaskedTextController cardController = MaskedTextController(mask: '0000 0000 0000 0000');
  MaskedTextController cardCVVController = MaskedTextController(mask: '000');
  MaskedTextController cardDateEndController = MaskedTextController(mask: '00/00');
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                CardTextField(
                  name: 'Имя владельца карты',
                  controller: TextEditingController(),
                  onEditingComplete: () {
                    focusNodeNumCard.requestFocus();
                  },
                ),
                SizedBox(height: 35.h),
                CardTextField(
                  name: 'Номер карты',
                  hintText: '0000 0000 0000 0000',
                  controller: cardController,
                  focusNode: focusNodeNumCard,
                  keyNum: true,
                  onChanged: (val) {
                    if (val.length == 19) {
                      focusNodeCVV.requestFocus();
                    }
                  },
                ),
                SizedBox(height: 35.h),
                Row(
                  children: [
                    Expanded(
                      child: CardTextField(
                        name: 'CVV',
                        controller: cardCVVController,
                        hintText: '000',
                        focusNode: focusNodeCVV,
                        keyNum: true,
                        onChanged: (val) {
                          if (val.length == 3) {
                            focusNodeDateEnd.requestFocus();
                          }
                        },
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: CardTextField(
                        name: 'Действует до',
                        hintText: '00/00',
                        controller: cardDateEndController,
                        focusNode: focusNodeDateEnd,
                        onChanged: (val) {
                          if (val.length == 5) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                        keyNum: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35.h),
                FormForButton(
                  borderRadius: BorderRadius.circular(4.r),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/check_box.svg',
                        height: 24.h,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'Запомнить карту для следующих заказов',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey9CColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: SafeArea(
                  child: WidgetButton(
                    onTap: () {},
                    text: 'Оплатить',
                    color: AppColors.orangeColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTextField extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final String? hintText;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final bool? keyNum;
  final Function()? onEditingComplete;

  const CardTextField({
    super.key,
    required this.controller,
    required this.name,
    this.focusNode,
    this.onChanged,
    this.keyNum,
    this.onEditingComplete,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.grey62Color,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey7FColor.withOpacity(0.25),
                blurRadius: 8.r,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: TextFormField(
              focusNode: focusNode,
              onChanged: onChanged,
              onEditingComplete: onEditingComplete,
              keyboardType: keyNum == true ? TextInputType.number : null,
              cursorColor: AppColors.grey9CColor,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.blackgrey35Color,
              ),
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText ?? '',
                hintStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackgrey35Color.withOpacity(0.3),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
