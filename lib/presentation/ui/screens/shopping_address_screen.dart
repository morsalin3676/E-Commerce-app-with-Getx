import 'package:e_commerce1/presentation/ui/widgets/checkout/shopping_address_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'add_shopping-address_screen.dart';


class ShoppingAddressScreen extends StatelessWidget {
  const ShoppingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        title: Text(
          "Shipping Addresses",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: const [

          ShippingAddressCardInfo(
            name: "Jane Doe",
            address:
            "3 Newbridge Court\nChino Hills, CA 91709, United States",
            isSelected: true,
          ),

          SizedBox(height: 20),

          ShippingAddressCardInfo(
            name: "John Doe",
            address:
            "3 Newbridge Court\nChino Hills, CA 91709, United States",
            isSelected: false,
          ),

          SizedBox(height: 20),

          ShippingAddressCardInfo(
            name: "John Doe",
            address:
            "51 Riverside\nChino Hills, CA 91709, United States",
            isSelected: false,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),

        onPressed: () {
          Get.to(() =>  AddShippingAddressScreen());
        },
      ),
    );
  }
}