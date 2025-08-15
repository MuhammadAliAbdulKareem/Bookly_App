import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for books',
        enabledBorder: customOutlinedInputBorder(),
        focusedBorder: customOutlinedInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20.sp,
          ),
          onPressed: () {
            // Implement search functionality
          },
        ),
      ),
    );
  }

  OutlineInputBorder customOutlinedInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(
          8.0.r,
        ),
      ),
    );
  }
}
