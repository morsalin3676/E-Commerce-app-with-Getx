import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.all(20.w),

      decoration: const BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          /// Brand & Price

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(
                      "H&M",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                      ),
                    ),

                    SizedBox(height: 5.h),

                    Text(
                      "Short Black Dress",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                "\$39.99",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SizedBox(height: 15.h),

          /// Rating

          Row(
            children: [

              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),

              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),

              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),

              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),

              const Icon(
                Icons.star_half,
                color: Colors.amber,
                size: 20,
              ),

              SizedBox(width: 8.w),

              Text(
                "(10 Reviews)",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 20.h),

          /// Description

          Text(
            "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication.",
            style: TextStyle(
              height: 1.6,
              color: Colors.grey.shade700,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}