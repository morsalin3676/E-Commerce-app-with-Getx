import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
    this.iconButton,
  });

  final String title;
    final Widget? iconButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

         iconButton ?? const SizedBox(),

        SizedBox(height: 20.h),

        Text(
          title,
          style: TextStyle(
            fontSize: 34.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}