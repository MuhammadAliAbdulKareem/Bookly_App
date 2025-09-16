import 'package:bookly/core/utils/helper/launch_url.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_text_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookEntity bookModel;
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
              title: 'Free',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0.r),
                bottomLeft: Radius.circular(8.0.r),
              ),
            ),
          ),
          Expanded(
              child: CustomTextButton(
                  onPressed: () async {
                    launchCustomUrl(bookModel.previewLink!, context);
                  },
                  title: isAvailable(bookModel),
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

  String isAvailable(BookEntity bookModel) {
    if (bookModel.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
