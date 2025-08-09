import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  // static const String fontFamily = 'inter';

  static TextStyle titleMedium = TextStyle(
    fontSize: 18.0.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle20 = GoogleFonts.eczar(
    fontSize: 20.0.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle30 = GoogleFonts.eczar(
    fontSize: 30.0.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle14 = GoogleFonts.eczar(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
  );
  static TextStyle textStyle16 = GoogleFonts.eczar(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
  );
}
