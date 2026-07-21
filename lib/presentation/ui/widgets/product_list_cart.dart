import 'package:e_commerce1/data/model/product_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProductListCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;

  const ProductListCard({
    super.key,
    required this.product,
    this.onTap,
    this.onFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14.r),
      child: Card(
        elevation: 3,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(bottom: 18.h),
          child: Row(
            children: [

              /// Product Image
              Stack(
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: SvgPicture.asset(
                      product.image,
                      width: 90.w,
                      height: 70.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 3.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        "-20%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(width: 14.w),

              /// Product Info
              Expanded(
                child: SizedBox(
                  height: 110.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// Brand
                      Text(
                        product.brand,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                        ),
                      ),

                      SizedBox(height: 4.h),

                      /// Name
                      Text(
                        product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      /// Rating
                      Row(
                        children: [

                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16.sp,
                          ),

                          SizedBox(width: 3.w),

                          Text(
                            product.rating.toString(),
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),

                          SizedBox(width: 4.w),

                          Text(
                            "(${product.reviewCount})",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),

                      const Spacer(),

                      /// Price
                      Row(
                        children: [

                          Text(
                            "\$${product.oldPrice}",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp,
                              decoration:
                              TextDecoration.lineThrough,
                            ),
                          ),

                          SizedBox(width: 8.w),

                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              /// Favorite
              IconButton(
                onPressed: onFavorite,
                icon: Icon(
                  product.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: product.isFavorite
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}