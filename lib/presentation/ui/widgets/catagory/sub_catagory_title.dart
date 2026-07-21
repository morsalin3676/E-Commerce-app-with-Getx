import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryTile extends StatelessWidget {

  final String title;

  final VoidCallback onTap;

  const SubCategoryTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: onTap,

      child: Container(

        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h,
        ),

        decoration: const BoxDecoration(

          border: Border(

            bottom: BorderSide(
              color: Color(0xffEEEEEE),
            ),
          ),
        ),

        child: Row(

          children: [

            Expanded(

              child: Text(

                title,

                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),

            Icon(
              Icons.arrow_forward_ios,
              size: 18.sp,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}