import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    required this.title,
    this.fontColor,
    required this.borderRadius,
    this.buttonBackgroundColor,
  });
  final String title;
  Color? fontColor;
  Color? buttonBackgroundColor;

  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          title,
          style: TextStyles.textStyle16.copyWith(
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w400,
            color: fontColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
