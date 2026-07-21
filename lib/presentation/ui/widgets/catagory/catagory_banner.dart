import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 16.w),

      padding: EdgeInsets.symmetric(vertical: 22.h,horizontal: 45.h),

      decoration: BoxDecoration(

        color: const Color(0xffDB3022),

        borderRadius: BorderRadius.circular(12.r),
      ),

      child: Column(

        children: [

          Text(
            "SUMMER SALES",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            "Up to 50% Off",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}