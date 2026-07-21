import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(

        padding: EdgeInsets.all(20.w),

        decoration: const BoxDecoration(

          color: Colors.white,

          boxShadow: [

            BoxShadow(
              blurRadius: 8,
              color: Colors.black12,
            )

          ],
        ),

        child: Row(

          children: [

            Expanded(

              child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                mainAxisSize: MainAxisSize.min,

                children: [

                  Text(
                    "Price",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                  ),

                  SizedBox(height:5.h),

                  Text(
                    "\$39.99",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(

              flex: 2,

              child: SizedBox(

                height: 50.h,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor:
                    const Color(0xffDB3022),

                    shape: RoundedRectangleBorder(

                      borderRadius:
                      BorderRadius.circular(30.r),

                    ),
                  ),

                  onPressed: () {},

                  child: Text(

                    "ADD TO CART",

                    style: TextStyle(

                      fontSize: 16.sp,

                      color: Colors.white,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}