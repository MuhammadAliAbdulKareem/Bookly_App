import 'package:flutter/material.dart';

void customSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Can\'t launch this url'),
    ),
  );
}
