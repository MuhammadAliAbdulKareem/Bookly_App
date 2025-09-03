import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../utils/assets_manager.dart';

class CustomHorizontalSkeletonList extends StatelessWidget {
  const CustomHorizontalSkeletonList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Skeletonizer(
        enabled: true,
        effect: const ShimmerEffect(
          duration: Duration(milliseconds: 1500),
          baseColor: Color(0xFF2A2A2A), // Dark gray base
          highlightColor: Color(0xFF404040),
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) => Padding(
            padding: REdgeInsets.only(
              right: 16.0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0.r),
              child: Image.asset(
                AssetsManager.testImage,
                width: 150.w,
                height: 200.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
