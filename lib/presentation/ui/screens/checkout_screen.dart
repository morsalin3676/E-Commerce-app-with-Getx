import 'package:e_commerce1/presentation/ui/widgets/checkout/delivery_method_card.dart';
import 'package:e_commerce1/presentation/ui/widgets/checkout/order_summary.dart';
import 'package:e_commerce1/presentation/ui/widgets/checkout/payment_card.dart';
import 'package:e_commerce1/presentation/ui/widgets/checkout/shopping_address_cart.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),

      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const ShippingAddressCard(),

            const SizedBox(height: 20),

            const PaymentCard(),

            const SizedBox(height: 20),

            const DeliveryMethodCard(),

            const SizedBox(height: 25),

            const OrderSummary(),

            const Spacer(),

            PrimaryButton(
              text: "SUBMIT ORDER",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}