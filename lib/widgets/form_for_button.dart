import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormForButton extends StatelessWidget {
  FormForButton({
    super.key,
    this.borderRadius,
    required this.onPressed,
    required this.child,
    this.borderColor,
  });
  final BorderRadiusGeometry? borderRadius;
  void Function()? onPressed;
  final Widget child;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        side: BorderSide(
          width: 0,
          color: borderColor ?? const Color(0x00000000),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
