import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      color: Colors.white,

      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            "Description",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10.h),

          Text(
            "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline. Perfect for casual outings and daily wear.",
            style: TextStyle(
              fontSize: 14.sp,
              height: 1.7,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}