import 'package:e_commerce1/presentation/ui/widgets/profile/leave_feedback_bottom-sheet.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/order_details_product_list.dart';
import 'package:e_commerce1/presentation/ui/widgets/profile/order_product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Order Details",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Order Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "Order №1947034",
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "05-12-2026",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),

            SizedBox(height: 8.h),

            Text(
              "Tracking Number: IW3475453455",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.sp,
              ),
            ),

            SizedBox(height: 25.h),

            Text(
              "3 items",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),

            SizedBox(height: 15.h),

         ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: OrderDetailsProducts.length,
                separatorBuilder: (_, __) => SizedBox(height: 16.h),
                itemBuilder: (_, index) {
                  final product = OrderDetailsProducts[index];

                  return OrderProductCard(
                    image: product["image"],
                    title: product["title"],
                    brand: product["brand"],
                    color: product["color"],
                    size: product["size"],
                    quantity: product["quantity"],
                    price: product["price"],
                  );
                },
              ),

            SizedBox(height: 25.h),

            Text(
              "Order Information",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),

            SizedBox(height: 15.h),

            _infoRow(
              "Shipping Address",
              "3 Newbridge Court\nChino Hills, CA",
            ),

            SizedBox(height: 12.h),

            _infoRow(
              "Payment Method",
              "**** **** **** 3947",
            ),

            SizedBox(height: 12.h),

            _infoRow(
              "Delivery Method",
              "FedEx, 3 Days",
            ),

            SizedBox(height: 12.h),

            _infoRow(
              "Discount",
              "10%",
            ),

            SizedBox(height: 12.h),

            _infoRow(
              "Total Amount",
              "\$112",
            ),

            SizedBox(height: 35.h),

            Row(
              children: [

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Reorder"),
                  ),
                ),

                SizedBox(width: 15.w),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (_) {
                          return const LeaveFeedbackBottomSheet();
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text("Leave Feedback"),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(
          width: 120.w,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),

        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}