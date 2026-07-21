import 'package:e_commerce1/presentation/state_holder/cart_controller.dart';
import 'package:e_commerce1/presentation/ui/widgets/bag/cart_iteam_card.dart';
import 'package:e_commerce1/presentation/ui/widgets/bag/promo_buttom_sheet.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'checkout_screen.dart';

class MyBagScreen extends StatelessWidget {
  MyBagScreen({super.key});

  final CartController controller =
  Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: const Color(0xffF9F9F9),

          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Text(
              "My Bag",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          body: Column(
            children: [

              /// Product List
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  itemCount: controller.cartList.length,
                  itemBuilder: (_, index) {
                    return CartItemCard(
                      item: controller.cartList[index],
                      index: index,
                    );
                  },
                ),
              ),

              /// Bottom Section
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    /// Promo
                    TextField(
                      readOnly: true,

                      decoration: InputDecoration(
                        hintText: controller.selectedPromo.isEmpty
                            ? "Enter your promo code"
                            : controller.selectedPromo,
                        suffixIcon: const Icon(Icons.arrow_forward),
                      ),

                      onTap: () {
                        FocusScope.of(context).unfocus();

                        Get.bottomSheet(
                          const PromoBottomSheet(),
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          enableDrag: true,
                        );
                      },


                    ),

                    SizedBox(height: 25.h),

                    /// Total Amount
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          "Total Amount",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                          ),
                        ),

                        Text(
                          "\$${controller.finalAmount.toStringAsFixed(0)}",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 25.h),

                    /// Checkout
                    SizedBox(
                      width: double.infinity,
                      child: PrimaryButton(
                        text: "CHECK OUT",
                        onPressed: () {
                          Get.to(()=> CheckoutScreen());
                        },
                      ),
                    ),

                    SizedBox(height: 15.h),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}