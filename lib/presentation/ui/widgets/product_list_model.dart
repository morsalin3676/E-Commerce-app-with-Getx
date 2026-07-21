import 'package:e_commerce1/presentation/ui/screens/product_details_screen.dart';
import 'package:e_commerce1/presentation/ui/utils/dummy_product/dummy_product_iteam_list.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_carts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home/section_header.dart';

class ProductModelSectoin extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ProductModelSectoin({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        SectionHeader(
          title: title,
          onTap: onTap,
        ),

        SizedBox(height: 15.h),

        SizedBox(

          height: 320.h,

          child: ListView.separated(

            padding: EdgeInsets.symmetric(horizontal: 20.w),

            scrollDirection: Axis.horizontal,

            itemBuilder: (_, index) {

              return ProductCard(
                product: dummyProducts[index],
                onTap: (){

                },
              );
            },

            separatorBuilder: (_, __) => SizedBox(width: 15.w),

            itemCount: dummyProducts.length,
          ),
        )
      ],
    );
  }
}