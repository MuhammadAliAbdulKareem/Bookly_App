import 'package:flutter/material.dart';

import 'best_sellers_item.dart';

class BestSellersBooksFeature extends StatelessWidget {
  const BestSellersBooksFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => BestSellersBooksItem(),
    );
  }
}
