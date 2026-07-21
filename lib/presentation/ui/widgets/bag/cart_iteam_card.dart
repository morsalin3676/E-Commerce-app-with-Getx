import 'package:e_commerce1/data/model/cart_model.dart';
import 'package:e_commerce1/presentation/state_holder/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartItemCard extends StatelessWidget {
  final CartModel item;
  final int index;

  const CartItemCard({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartController>();

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
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
              topLeft: Radius.circular(14.r),
              bottomLeft: Radius.circular(14.r),
            ),
            child: Image.asset(
              item.image,
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  /// Top Row
                  Row(
                    children: [

                      Expanded(
                        child: Text(
                          item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),

                      PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == "remove") {
                            controller.removeItem(index);
                          }
                        },
                        itemBuilder: (_) => [
                          const PopupMenuItem(
                            value: "favorite",
                            child: Text(
                              "Add to Favorites",
                            ),
                          ),
                          const PopupMenuItem(
                            value: "remove",
                            child: Text(
                              "Remove",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 5.h),

                  Text(
                    item.brand,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  Row(
                    children: [

                      Text(
                        "Color:",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),

                      SizedBox(width: 4.w),

                      Text(
                        item.color,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(width: 20.w),

                      Text(
                        "Size:",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),

                      SizedBox(width: 4.w),

                      Text(
                        item.size,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15.h),

                  Row(
                    children: [

                      /// Minus
                      InkWell(
                        onTap: () {
                          controller.decreaseQuantity(index);
                        },
                        borderRadius:
                        BorderRadius.circular(20),
                        child: Container(
                          width: 34.w,
                          height: 34.w,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: const Icon(
                            Icons.remove,
                            size: 18,
                          ),
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Text(
                        item.quantity.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),

                      SizedBox(width: 12.w),

                      /// Plus
                      InkWell(
                        onTap: () {
                          controller.increaseQuantity(index);
                        },
                        borderRadius:
                        BorderRadius.circular(20),
                        child: Container(
                          width: 34.w,
                          height: 34.w,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 18,
                          ),
                        ),
                      ),

                      const Spacer(),

                      Text(
                        "\$${item.totalPrice.toStringAsFixed(0)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
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