import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryMethodItem extends StatelessWidget {

  final String image;

  const DeliveryMethodItem({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SvgPicture.asset(
            image ,
            height: 28,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 5),

          const Text(
            "2-3 days",
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
