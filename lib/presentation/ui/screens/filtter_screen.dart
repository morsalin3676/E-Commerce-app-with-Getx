import 'package:e_commerce1/presentation/state_holder/filter_controller.dart';
import 'package:e_commerce1/presentation/ui/widgets/custom_elevated_button.dart';
import 'package:e_commerce1/presentation/ui/widgets/filter/brand_title.dart';
import 'package:e_commerce1/presentation/ui/widgets/filter/filter_category_item.dart';
import 'package:e_commerce1/presentation/ui/widgets/filter/filter_section_title.dart';
import 'package:e_commerce1/presentation/ui/widgets/filter/filter_size_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/filter/filtter_color_iteam.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});

  final FilterController controller = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Filters"),
            centerTitle: true,
          ),

          body: SingleChildScrollView(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// PRICE
                const FilterSectionTitle(
                  title: "Price",
                ),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${controller.priceRange.start.round()}",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${controller.priceRange.end.round()}",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                /// to and from
                Container(
                  padding: EdgeInsets.all(18.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        children: [

                          const Text("From"),

                          SizedBox(height: 5.h),

                          Text(
                            "\$${controller.priceRange.start.round()}",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [

                          const Text("To"),

                          SizedBox(height: 5.h),

                          Text(
                            "\$${controller.priceRange.end.round()}",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // range slider
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.red,
                    inactiveTrackColor: Colors.grey.shade300,
                    thumbColor: Colors.red,
                    overlayColor: Colors.red.withOpacity(.2),
                    trackHeight: 4,
                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      enabledThumbRadius: 8,
                    ),
                  ),
                  child: RangeSlider(
                    values: controller.priceRange,
                    min: 0,
                    max: 300,
                    onChanged: controller.changePrice,
                  ),
                ),

                SizedBox(height: 30.h),

                /// COLORS
                const FilterSectionTitle(
                  title: "Colors",
                ),

                SizedBox(height: 18.h),

                SizedBox(
                  height: 45.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.colors.length,
                    itemBuilder: (_, index) {
                      return FilterColorItem(
                        color: controller.colors[index],
                        selected:
                        controller.selectedColor == index,
                        onTap: () {
                          controller.selectColor(index);
                        },
                      );
                    },
                  ),
                ),

                SizedBox(height: 35.h),

                /// SIZE
                const FilterSectionTitle(
                  title: "Size",
                ),

                SizedBox(height: 18.h),

                Wrap(
                  spacing: 12.w,
                  runSpacing: 12.h,
                  children: List.generate(
                    controller.sizes.length,
                        (index) {
                      return FilterSizeItem(
                        title: controller.sizes[index],
                        selected:
                        controller.selectedSize == index,
                        onTap: () {
                          controller.selectSize(index);
                        },
                      );
                    },
                  ),
                ),

                SizedBox(height: 35.h),

                //BRAND

                const FilterSectionTitle(
                  title: "Brand",
                ),

                SizedBox(height: 15.h),

                BrandTile(
                  title: controller.selectedBrand,
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        padding: EdgeInsets.all(20.w),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.brands.length,
                          itemBuilder: (_, index) {
                            return ListTile(
                              title: Text(controller.brands[index]),
                              trailing:
                              controller.selectedBrand ==
                                  controller.brands[index]
                                  ? const Icon(
                                Icons.check,
                                color: Colors.red,
                              )
                                  : null,
                              onTap: () {
                                controller.selectBrand(
                                  controller.brands[index],
                                );
                                Get.back();
                              },
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),

                SizedBox(height: 18.h),

                FilterSectionTitle(title: "Category"),
                SizedBox(height: 12.h,),

                Wrap(
                  spacing: 12.w,
                  runSpacing: 12.h,
                  children: List.generate(
                    controller.categories.length,
                        (index) {
                      return FilterCategoryItem(
                        title:
                        controller.categories[index],
                        selected:
                        controller.selectedCategory ==
                            index,
                        onTap: () {
                          controller.selectCategory(index);
                        },
                      );
                    },
                  ),
                ),

                SizedBox(height: 40.h),

                Row(
                  children: [

                    Expanded(
                      child: OutlinedButton(
                        onPressed: controller.discard,
                        child: const Text("Discard"),
                      ),
                    ),

                    SizedBox(width: 16.w),

                    Expanded(
                      child: PrimaryButton(
                        text: "Apply",
                        onPressed: controller.applyFilter,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        );
      },
    );
  }
}