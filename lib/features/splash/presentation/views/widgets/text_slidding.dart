import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliddingAnimationText extends StatelessWidget {
  const SliddingAnimationText({
    super.key,
    required Animation<Offset> sliddingAnimation,
  }) : _sliddingAnimation = sliddingAnimation;

  final Animation<Offset> _sliddingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _sliddingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: _sliddingAnimation,
            child: Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          );
        });
  }
}
