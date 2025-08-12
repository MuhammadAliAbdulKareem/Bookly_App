import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_text_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(
        horizontal: 38.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              title: '19.99 €',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0.r),
                bottomLeft: Radius.circular(8.0.r),
              ),
            ),
          ),
          Expanded(
              child: CustomTextButton(
                  title: 'Free Preview',
                  fontColor: Colors.white,
                  buttonBackgroundColor: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0.r),
                    bottomRight: Radius.circular(8.0.r),
                  ))),
        ],
      ),
    );
  }
}
