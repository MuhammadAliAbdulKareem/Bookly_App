import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0.r),
        image: DecorationImage(
          image: AssetImage(AssetsManager.testImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
