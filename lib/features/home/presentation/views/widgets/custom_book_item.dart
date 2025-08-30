import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem(
      {super.key, required this.width, required this.imageUrl});
  final double width;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0.r),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => const Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
        fit: BoxFit.fill,
        width: width.w,
      ),
    );
  }
}
