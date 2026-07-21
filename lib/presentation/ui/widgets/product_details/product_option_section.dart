import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductOptionSection extends StatefulWidget {
  const ProductOptionSection({super.key});

  @override
  State<ProductOptionSection> createState() =>
      _ProductOptionSectionState();
}

class _ProductOptionSectionState
    extends State<ProductOptionSection> {

  final List<String> sizes = [
    "S",
    "M",
    "L",
    "XL",
  ];

  final List<Color> colors = [
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
  ];

  int selectedSize = 1;
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          /// Size

          Text(
            "Select Size",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15.h),

          SizedBox(
            height: 48.h,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,

              itemCount: sizes.length,

              separatorBuilder: (_, __) =>
                  SizedBox(width: 12.w),

              itemBuilder: (_, index) {

                bool isSelected =
                    selectedSize == index;

                return GestureDetector(

                  onTap: () {

                    setState(() {

                      selectedSize = index;

                    });

                  },

                  child: Container(

                    width: 50.w,

                    decoration: BoxDecoration(

                      color: isSelected
                          ? Colors.red
                          : Colors.white,

                      borderRadius:
                      BorderRadius.circular(12.r),

                      border: Border.all(
                        color: isSelected
                            ? Colors.red
                            : Colors.grey.shade300,
                      ),
                    ),

                    child: Center(

                      child: Text(

                        sizes[index],

                        style: TextStyle(

                          color: isSelected
                              ? Colors.white
                              : Colors.black,

                          fontWeight:
                          FontWeight.bold,

                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 30.h),

          /// Color

          Text(
            "Select Color",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15.h),

          Row(
            children: List.generate(
              colors.length,
                  (index) {

                bool isSelected =
                    selectedColor == index;

                return GestureDetector(

                  onTap: () {

                    setState(() {

                      selectedColor = index;

                    });

                  },

                  child: Container(

                    margin: EdgeInsets.only(
                      right: 15.w,
                    ),

                    padding: EdgeInsets.all(3.r),

                    decoration: BoxDecoration(

                      shape: BoxShape.circle,

                      border: Border.all(
                        color: isSelected
                            ? Colors.red
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),

                    child: CircleAvatar(
                      radius: 14.r,
                      backgroundColor: colors[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}