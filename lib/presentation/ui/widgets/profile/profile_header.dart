import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        /// Profile Image
        CircleAvatar(
          radius: 38.r,
          backgroundColor: Colors.black87,
          child: CircleAvatar(
            radius: 35.r,
           backgroundImage: AssetImage(AppAssets.profilePicture,),
          ),
        ),

        SizedBox(width: 18.w),

        /// Name & Email
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Matilda Brown",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 5.h),

              Text(
                "matildabrown@mail.com",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}