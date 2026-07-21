import 'package:e_commerce1/presentation/state_holder/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PromoBottomSheet extends StatelessWidget {
  const PromoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartController>();

    return Container(
      height: MediaQuery.of(context).size.height * .45,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: Column(
        children:[
          SizedBox(height: 10.h,),
          Text("Your Promo codes", style: TextStyle(
              fontSize: 25.sp,
              color: Colors.grey.shade400
          ),),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: controller.promoList.length,
              itemBuilder: (context, index) {
                final promo = controller.promoList[index];
                // print("PromoBottomSheet Build");
                // print(controller.promoList.length);
                // print("Item : $index");
                return Card(
                  child: ListTile(
                    title: Text(promo.title),
                    subtitle: Text(promo.code),
                    trailing: SizedBox(
                      width: 90,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.applyPromo(promo);
                        },
                        child: const Text("Apply"),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]
      ),
    );
  }
}