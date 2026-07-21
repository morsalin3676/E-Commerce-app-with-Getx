import 'package:e_commerce1/presentation/state_holder/catagory_controller.dart';
import 'package:e_commerce1/presentation/ui/screens/sub_catagory_screen.dart';
import 'package:e_commerce1/presentation/ui/utils/dummy_product/dummy_catagory.dart';
import 'package:e_commerce1/presentation/ui/widgets/catagory/catagory_banner.dart';
import 'package:e_commerce1/presentation/ui/widgets/catagory/catagory_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final CategoryController controller =
  Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {

    return GetBuilder<CategoryController>(

      builder: (_) {

        return Scaffold(

          appBar: AppBar(

            centerTitle: true,

            title: const Text("Categories"),

            actions: const [

              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.search),
              )
            ],
          ),

          body: Column(

            children: [

              SizedBox(height: 15.h),

              SizedBox(

                height: 45.h,

                child: ListView.builder(

                  scrollDirection: Axis.horizontal,

                  itemCount: controller.tabs.length,

                  itemBuilder: (_, index) {

                    bool selected =
                        controller.selectedTab == index;

                    return GestureDetector(

                      onTap: () {

                        controller.changeTab(index);

                      },

                      child: Container(

                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                        ),

                        alignment: Alignment.center,

                        decoration: BoxDecoration(

                          border: Border(

                            bottom: BorderSide(

                              color: selected
                                  ? Colors.red
                                  : Colors.transparent,

                              width: 2,
                            ),
                          ),
                        ),

                        child: Text(

                          controller.tabs[index],

                          style: TextStyle(

                            color: selected
                                ? Colors.red
                                : Colors.black,

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 20.h),

              const CategoryBanner(),

              SizedBox(height: 15.h),

              Expanded(

                child: ListView.builder(

                  itemCount: categories.length,

                  itemBuilder: (_, index) {

                    return CategoryTile(

                      category: categories[index],

                      onTap: () {

                        Get.to(
                              () => const SubCategoryScreen(),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}