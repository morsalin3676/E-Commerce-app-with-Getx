import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPreviewSection extends StatelessWidget {
  const ReviewPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      padding: EdgeInsets.all(20.w),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

            children: [

              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextButton(
                onPressed: () {},

                child: const Text("View All"),
              ),
            ],
          ),

          SizedBox(height: 15.h),

          Row(
            children: const [

              Icon(Icons.star,color: Colors.amber),

              Icon(Icons.star,color: Colors.amber),

              Icon(Icons.star,color: Colors.amber),

              Icon(Icons.star,color: Colors.amber),

              Icon(Icons.star_half,color: Colors.amber),

              SizedBox(width:10),

              Text("4.8 (120 Reviews)"),
            ],
          ),

          SizedBox(height:20),

          const ListTile(

            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),

            title: Text("John Doe"),

            subtitle: Text(
              "Excellent quality. Highly recommended!",
            ),
          ),
        ],
      ),
    );
  }
}