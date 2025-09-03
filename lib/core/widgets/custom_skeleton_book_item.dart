import 'package:bookly/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomSkeletonBookItem extends StatelessWidget {
  const CustomSkeletonBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 7.0.h, horizontal: 30.0.w),
      child: Skeletonizer(
        enabled: true,
        effect: const ShimmerEffect(
          duration: Duration(milliseconds: 1500),
          baseColor: Color(0xFF2A2A2A), // Dark gray base
          highlightColor: Color(0xFF404040),
        ),
        child: Row(
          children: [
            // Use ClipRRect + Image.asset for shimmer effect
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0.r),
              child: Image.asset(
                AssetsManager.testImage,
                width: 85.w,
                height: 120.h,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10.0.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sample Book Title Text',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Author Name',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Text('Free', style: TextStyle(fontSize: 12.sp)),
                      SizedBox(width: 40.0.w),
                      Text('4.8★', style: TextStyle(fontSize: 12.sp)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
