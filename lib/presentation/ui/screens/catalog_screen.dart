import 'package:e_commerce1/presentation/state_holder/catalog_controller.dart';
import 'package:e_commerce1/presentation/ui/widgets/catagory/catagory_chip.dart';
import 'package:e_commerce1/presentation/ui/widgets/catagory/sort_filter_bar.dart';
import 'package:e_commerce1/presentation/ui/widgets/product_list_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';




class CatalogScreen extends StatelessWidget {
  CatalogScreen({super.key});

  final CatalogController controller =
  Get.put(CatalogController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CatalogController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Women's Tops"),
            centerTitle: false,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(Icons.search),
              )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),

              /// Chips
              SizedBox(
                height: 42.h,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.chips.length,
                  itemBuilder: (_, index) {
                    return CategoryChip(
                      title: controller.chips[index],
                      selected:
                      controller.selectedChip == index,
                      onTap: () =>
                          controller.selectChip(index),
                    );
                  },
                ),
              ),

              SizedBox(height: 18.h),

               SortFilterBar(),

              SizedBox(height: 15.h),

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemCount: controller.products.length,
                  itemBuilder: (_, index) {
                    return ProductListCard(product:controller.products[index] ,);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}