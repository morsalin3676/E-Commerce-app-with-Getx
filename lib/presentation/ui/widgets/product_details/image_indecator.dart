import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageIndicator extends StatelessWidget {

  final int count;
  final int currentIndex;

  const ImageIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {

    return AnimatedSmoothIndicator(

      activeIndex: currentIndex,

      count: count,

      effect: const WormEffect(

        dotHeight: 8,

        dotWidth: 8,

        activeDotColor: Colors.red,

        dotColor: Colors.grey,

      ),

    );
  }
}