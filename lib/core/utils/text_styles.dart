import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  // static const String fontFamily = 'inter';

  static TextStyle titleMedium = TextStyle(
    fontSize: 18.0.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bookTitle20R600 = GoogleFonts.eczar(
    fontSize: 18.0.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bookAuthor14R400 = GoogleFonts.eczar(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
  );
}
