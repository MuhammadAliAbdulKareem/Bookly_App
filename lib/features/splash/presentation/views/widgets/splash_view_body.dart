import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
              width: 240.0,
            ),
            SizedBox(height: 20.0),
            Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ]),
    );
  }
}
