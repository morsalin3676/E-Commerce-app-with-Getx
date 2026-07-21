import 'package:e_commerce1/data/model/catagory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTile extends StatelessWidget {

  final CategoryModel category;

  final VoidCallback onTap;

  const CategoryTile({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: onTap,

      borderRadius: BorderRadius.circular(12.r),

      child: Container(

        margin: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),

        height: 110.h,

        decoration: BoxDecoration(

          color: Colors.white,

          borderRadius: BorderRadius.circular(12.r),

          boxShadow: [

            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.r,
            ),
          ],
        ),

        child: Row(

          children: [

            Expanded(

              child: Padding(

                padding: EdgeInsets.only(left: 20.w),

                child: Text(

                  category.title,

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),

            ClipRRect(

              borderRadius: BorderRadius.only(

                topRight: Radius.circular(12.r),

                bottomRight: Radius.circular(12.r),
              ),

              child: Image.asset(

                category.image,

                width: 130.w,

                height: 110.h,

                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}