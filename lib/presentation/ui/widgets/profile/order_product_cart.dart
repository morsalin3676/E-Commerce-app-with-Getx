import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String brand;
  final String color;
  final String size;
  final int quantity;
  final double price;

  const OrderProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.brand,
    required this.color,
    required this.size,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          /// Product Image
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              bottomLeft: Radius.circular(12.r),
            ),
            child: Image.asset(
              image,
              width: 110.w,
              height: 110.h,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    brand,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Row(
                    children: [

                      Text(
                        "Color: ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),

                      Text(
                        color,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(width: 20.w),

                      Text(
                        "Size: ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),

                      Text(
                        size,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 14.h),

                  Row(
                    children: [

                      Text(
                        "Qty: $quantity",
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),

                      const Spacer(),

                      Text(
                        "\$${price.toStringAsFixed(0)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}