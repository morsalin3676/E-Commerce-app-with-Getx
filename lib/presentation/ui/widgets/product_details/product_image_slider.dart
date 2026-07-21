import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_indecator.dart';


class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key});

  @override
  State<ProductImageSlider> createState() =>
      _ProductImageSliderState();
}

class _ProductImageSliderState
    extends State<ProductImageSlider> {

  int currentIndex = 0;

  final List<String> images = [

    AppAssets.product1,
    AppAssets.product2,
    AppAssets.product3,


  ];

  @override
  Widget build(BuildContext context) {

    return Stack(

      alignment: Alignment.bottomCenter,

      children: [

        CarouselSlider.builder(

          itemCount: images.length,

          itemBuilder: (_, index, realIndex) {

            return Container(

              width: double.infinity,

              color: Colors.white,

              child: SvgPicture.asset(
                images[index],
                fit: BoxFit.contain,
              ),

            );
          },

          options: CarouselOptions(

            height: double.infinity,

            viewportFraction: 1,

            onPageChanged: (index, reason) {

              setState(() {

                currentIndex = index;

              });

            },

          ),

        ),

        Positioned(

          bottom: 20,

          child: ImageIndicator(

            count: images.length,

            currentIndex: currentIndex,

          ),

        ),
      ],
    );
  }
}