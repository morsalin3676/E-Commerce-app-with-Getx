import 'package:e_commerce1/presentation/ui/widgets/product_details/buttom_add_to_cart.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/delivery_info_cart.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/description_section.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/product_image_slider.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/product_info_section.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/product_option_section.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/quantity_selector.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/return_policy.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/review_preview_section.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_details/smilar_product_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),

      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            expandedHeight: 430.h,
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.white,

            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),

            actions: [

              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),

            ],

            flexibleSpace: const FlexibleSpaceBar(
              background: ProductImageSlider(),
            ),
          ),

          const SliverToBoxAdapter(
            child: Column(
              children:  [

                ProductInfoSection(),

                ProductOptionSection(),

                QuantitySelector(),

                DescriptionSection(),

                DeliveryInfoCard(),

                ReturnPolicyCard(),

                ReviewPreviewSection(),

                SimilarProductsSection(),

                SizedBox(height: 100),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAddToCart(),
    );
  }
}