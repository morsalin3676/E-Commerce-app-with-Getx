
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(

      options: CarouselOptions(
        height: 200.h,
        viewportFraction: .92,
        autoPlay: true,
      ),

      items: [

        _banner(),

        _banner(),

        _banner(),
      ],
    );
  }

  Widget _banner() {

    return Container(

      width: double.infinity,

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(18.r),
        
      ),

      child: Padding(

        padding: const EdgeInsets.all(20),

        child: Stack(
          children:[ 
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: SvgPicture.asset(
                  AppAssets.shopping_banner,
                  fit: BoxFit.cover,
                  
                ),
              ),
            ),
          Positioned(
            left: 40,
            top: 40,
            child:  Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.end,

              children: const [

                Text(
                  "Fashion Sale",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )

          ],
        ),
      ),
    );
  }
}