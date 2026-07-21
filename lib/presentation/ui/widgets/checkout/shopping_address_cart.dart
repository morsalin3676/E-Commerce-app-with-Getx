import 'package:e_commerce1/presentation/ui/screens/shopping_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressCard extends StatelessWidget {
  const ShippingAddressCard({super.key, });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                const Text(
                  "Shipping address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                TextButton(
                  onPressed: () {
                    Get.to(()=> ShoppingAddressScreen());
                  },
                  child: const Text("Change"),
                )

              ],
            ),

            const SizedBox(height: 10),

            const Text(
              "Jane Doe",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "3 Newbridge Court\nChino Hills, CA 91709\nUnited States",
            )

          ],
        ),
      ),
    );
  }
}
