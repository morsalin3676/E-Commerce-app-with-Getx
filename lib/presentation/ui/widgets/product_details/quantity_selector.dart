import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() =>
      _QuantitySelectorState();
}

class _QuantitySelectorState
    extends State<QuantitySelector> {

  int quantity = 1;

  @override
  Widget build(BuildContext context) {

    return Container(

      color: Colors.white,

      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 15.h,
      ),

      child: Row(

        children: [

          Text(
            "Quantity",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),

          const Spacer(),

          IconButton(

            onPressed: () {

              if(quantity>1){

                setState(() {

                  quantity--;

                });

              }

            },

            icon: const Icon(Icons.remove_circle_outline),

          ),

          Text(
            quantity.toString(),
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),

          IconButton(

            onPressed: () {

              setState(() {

                quantity++;

              });

            },

            icon: const Icon(Icons.add_circle),

          ),

        ],
      ),
    );
  }
}