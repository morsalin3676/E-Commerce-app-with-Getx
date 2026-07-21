import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 33.r,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 30.r,
              backgroundImage: AssetImage(AppAssets.profilePicture),

            ),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning 👋",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  "Matilda Brown",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8.r,
                ),
              ],
            ),
            child: const Icon(Icons.notifications_none_rounded),
          )
        ],
      ),
    );
  }
}