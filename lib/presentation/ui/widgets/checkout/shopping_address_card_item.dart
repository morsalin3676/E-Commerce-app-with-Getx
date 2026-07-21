import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingAddressCardInfo extends StatelessWidget {
  final String name;
  final String address;
  final bool isSelected;

  const ShippingAddressCardInfo({
    super.key,
    required this.name,
    required this.address,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.w),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.12),
            blurRadius: 10,
            offset: const Offset(0, 3),
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 6.h),

          Text(
            address,
            style: TextStyle(
              fontSize: 14.sp,
              height: 1.5,
            ),
          ),

          SizedBox(height: 18.h),

          Row(
            children: [

              Checkbox(
                value: isSelected,
                activeColor: Colors.black,
                onChanged: (value) {},
              ),

              SizedBox(width: 8.w),

              Text(
                "Use as the shipping address",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}