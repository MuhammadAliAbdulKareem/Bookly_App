import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../home/presentation/views/home.dart';
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
      Get.to(() => const HomePage(),
          transition: Transition.fadeIn, duration: const Duration(seconds: 1));
    });
  }

/*************  ✨ Windsurf Command ⭐  *************/
  ///
  /// Creates a controller for slidding text animation.
  ///
  /// This method creates a controller for text animation and sets
  /// the animation duration to 1 second. The animation begins with
  /// the text at an offset of (0, 2) and ends at an offset of (0, 0),
  /// effectively creating a slide-in effect from the bottom of the
  /// screen to the top. The animation is then played forward using
  /// [_animationController.forward()].
  ///
  /// This method is called in the [initState] method of the
  /// [SplashViewBody] class and is used to create the animation for
  /// the text "Read Free Books".
  ///
  /// *****  3457e2bd-91b4-4af1-9d7a-5b63ccb9c231  ******
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
