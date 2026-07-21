import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String trackingNumber;
  final int quantity;
  final int totalAmount;
  final String status;
  final String date;
  final VoidCallback onDetails;

  const OrderCard({
    super.key,
    required this.orderNumber,
    required this.trackingNumber,
    required this.quantity,
    required this.totalAmount,
    required this.status,
    required this.date,
    required this.onDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Order Number & Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                "Order №$orderNumber",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Text(
                date,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 14.h),

          /// Tracking Number
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey.shade600,
              ),
              children: [
                const TextSpan(
                  text: "Tracking Number: ",
                ),
                TextSpan(
                  text: trackingNumber,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 12.h),

          /// Quantity & Total
          Row(
            children: [

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey.shade600,
                  ),
                  children: [
                    const TextSpan(
                      text: "Quantity: ",
                    ),
                    TextSpan(
                      text: "$quantity",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey.shade600,
                  ),
                  children: [
                    const TextSpan(
                      text: "Total Amount: ",
                    ),
                    TextSpan(
                      text: "\$$totalAmount",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 22.h),

          /// Button & Status
          Row(
            children: [

              SizedBox(
                width: 110.w,
                height: 42.h,
                child: OutlinedButton(
                  onPressed: onDetails,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.red,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(24.r),
                    ),
                  ),
                  child: Text(
                    "Details",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              Text(
                status,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}