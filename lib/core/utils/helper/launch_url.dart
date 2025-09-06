import 'package:bookly/core/utils/helper/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(String url, BuildContext context) async {
  if (url.isEmpty) {
    if (context.mounted) {
      customSnackBar(context: context, message: 'No URL provided');
    }
    return;
  }
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    if (context.mounted) {
      customSnackBar(context: context, message: 'Can\'t launch this url');
    }
  }
}
