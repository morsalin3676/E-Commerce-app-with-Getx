import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SimilarProductCard extends StatelessWidget {

  final String image;

  final String title;

  final double price;

  const SimilarProductCard({

    super.key,

    required this.image,

    required this.title,

    required this.price,

  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 150,

      child: Card(

        child: Column(

          children: [

            Expanded(

              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
              ),

            ),

            Padding(

              padding: const EdgeInsets.all(8),

              child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Text(title),

                  Text(
                    "\$$price",
                    style: const TextStyle(
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