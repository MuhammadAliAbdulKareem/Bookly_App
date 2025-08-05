import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar()],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 32.0, vertical: 48.0),
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
