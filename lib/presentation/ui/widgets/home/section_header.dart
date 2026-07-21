import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  final VoidCallback onTap;

  const SectionHeader({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          GestureDetector(
            onTap: onTap,
            child: Text(
              "View all",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}