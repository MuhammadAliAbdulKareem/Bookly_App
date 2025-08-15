import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_manager.dart';
import 'text_slidding.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _sliddingAnimation;

  @override
  void initState() {
    super.initState();
    textSliddingAnimation();
    navigationToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AssetsManager.splashLogo,
              width: 240.0.w,
            ),
            SizedBox(height: 20.0.h),
            SliddingAnimationText(sliddingAnimation: _sliddingAnimation)
          ]),
    );
  }

  void navigationToHome() {
    Future.delayed(Duration(seconds: 2), () {
      // Get.to(() => const HomePage(),
      //     transition: Transition.fadeIn, duration: const Duration(seconds: 1));
      GoRouter.of(context).pushReplacement(
        AppRouter.kHomeView,
      );
    });
  }

  void textSliddingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _sliddingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
  }
}
