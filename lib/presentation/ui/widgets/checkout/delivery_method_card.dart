import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:e_commerce1/presentation/ui/widgets/checkout/delevery_method_item.dart';
import 'package:flutter/material.dart';

class DeliveryMethodCard extends StatelessWidget {
  const DeliveryMethodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: DeliveryMethodItem(
            image:AppAssets.fedex,
          ),
        ),

        SizedBox(width: 15),

        Expanded(
          child: DeliveryMethodItem(
            image: AppAssets.usp
          ),
        ),

        SizedBox(width: 15),

        Expanded(
          child: DeliveryMethodItem(
            image: AppAssets.dhl
          ),
        ),
      ],
    );
  }
}
