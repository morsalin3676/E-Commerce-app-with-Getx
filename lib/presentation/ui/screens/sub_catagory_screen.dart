import 'package:e_commerce1/presentation/ui/utils/dummy_product/dummy_sub_catagory.dart';
import 'package:e_commerce1/presentation/ui/widgets/catagory/sub_catagory_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'catalog_screen.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        centerTitle: true,

        title: const Text("Categories"),

        actions: const [

          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),

      body: Column(

        children: [

          SizedBox(height: 20.h),

          Padding(

            padding: EdgeInsets.symmetric(horizontal: 16.w),

            child: SizedBox(

              width: double.infinity,

              height: 48.h,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: const Color(0xffDB3022),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),

                onPressed: () {},

                child: const Text(

                  "VIEW ALL ITEMS",

                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20.h),

          Padding(

            padding: EdgeInsets.symmetric(horizontal: 20.w),

            child: Align(

              alignment: Alignment.centerLeft,

              child: Text(

                "Choose category",

                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),

          SizedBox(height: 10.h),

          Expanded(

            child: ListView.builder(

              itemCount: womenSubCategories.length,

              itemBuilder: (_, index) {

                return SubCategoryTile(

                  title: womenSubCategories[index].name,

                  onTap: () {

                    Get.to(() =>  CatalogScreen());
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}