import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        leading: SvgPicture.asset(
          AppAssets.masterCard,
          width: 40,
        ),

        title: const Text("**** **** **** 3947"),

        trailing: TextButton(
          onPressed: () {},
          child: const Text("Change"),
        ),
      ),
    );
  }
}
