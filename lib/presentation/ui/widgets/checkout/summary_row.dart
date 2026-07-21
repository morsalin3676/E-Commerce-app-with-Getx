import 'package:flutter/material.dart';

class SummaryRow extends StatelessWidget {

  final String title;
  final String value;
  final bool isBold;

  const SummaryRow({
    super.key,
    required this.title,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),

        Text(
          value,
          style: TextStyle(
            fontWeight:
            isBold ? FontWeight.bold : FontWeight.w500,
            fontSize: isBold ? 18 : 16,
          ),
        ),

      ],
    );
  }
}