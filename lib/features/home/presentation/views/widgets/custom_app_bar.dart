import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(
        left: 32.0,
        right: 32.0,
        top: 32.0,
        bottom: 16.0,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsManager.splashLogo,
            width: 75.w,
            height: 16.h,
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20.sp,
            ),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
    );
  }
}
