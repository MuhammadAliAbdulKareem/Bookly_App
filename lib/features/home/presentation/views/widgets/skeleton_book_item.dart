import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonBookItem extends StatelessWidget {
  const SkeletonBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 7.0.h, horizontal: 30.0.w),
      child: SkeletonizerConfig(
        data: SkeletonizerConfigData(
          effect: ShimmerEffect(
            duration: const Duration(milliseconds: 1000),
            highlightColor: Colors.grey[500]!,
            baseColor: Colors.grey[700]!,
          ),
        ),
        child: Skeletonizer(
          enabled: true,
          child: Row(
            children: [
              Container(
                width: 85.w,
                height: 120.h,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(12.0.r),
                ),
              ),
              SizedBox(width: 10.0.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0.r),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      width: 120.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0.r),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Container(
                          width: 50.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0.r),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 40.0.w),
                        Container(
                          width: 70.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0.r),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
