import 'package:e_commerce1/presentation/ui/widgets/checkout/summary_row.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SummaryRow(
          title: "Order",
          value: "\$112",
        ),

        SizedBox(height: 10),

        SummaryRow(
          title: "Delivery",
          value: "\$15",
        ),

        SizedBox(height: 10),

        SummaryRow(
          title: "Summary",
          value: "\$127",
          isBold: true,
        ),

      ],
    );
  }
}
