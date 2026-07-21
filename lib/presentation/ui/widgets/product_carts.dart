import 'package:e_commerce1/data/model/product_models.dart';
import 'package:e_commerce1/presentation/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {

  final ProductModel product;
  final VoidCallback onTap;
  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 165.w,

      child: GestureDetector(
        onTap: (){
          Get.to(()=> ProductDetailsScreen());
        },
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Stack(

              children: [

                ClipRRect(

                  borderRadius: BorderRadius.circular(16.r),

                  child: SvgPicture.asset(
                    product.image,
                    height: 190.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(

                  right: 10,

                  bottom: 10,

                  child: CircleAvatar(

                    backgroundColor: Colors.white,

                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 10.h),

            Row(
              children: List.generate(
                5,
                    (index) => Icon(
                  Icons.star,
                  size: 15.sp,
                  color: Colors.amber,
                ),
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),

            SizedBox(height: 2.h),

            Text(
              product.brand,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.sp,
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              "\$${product.price}",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}