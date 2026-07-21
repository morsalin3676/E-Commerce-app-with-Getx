import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/semilar_product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SimilarProductsSection extends StatelessWidget {

  const SimilarProductsSection({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: 250,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" Similar Products", style: TextStyle(
            fontSize: 24.h
          ),),
          SizedBox(height: 5.h,),
          Expanded(
            child: ListView(

              scrollDirection: Axis.horizontal,

              children: [

                SimilarProductCard(
                  image: AppAssets.product1,
                  title: "Running Shoe",
                  price: 89,
                ),

                SimilarProductCard(
                  image: AppAssets.product1,
                  title: "Sneaker",
                  price: 95,
                ),

                 SimilarProductCard(
                  image: AppAssets.product1,
                  title: "Nike Air",
                  price: 120,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}