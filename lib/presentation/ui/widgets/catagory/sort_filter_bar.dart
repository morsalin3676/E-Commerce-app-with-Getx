import 'package:e_commerce1/presentation/state_holder/bottom_sort_controller.dart';
import 'package:e_commerce1/presentation/ui/screens/filtter_screen.dart';
import 'package:e_commerce1/presentation/ui/widgets/filter/sort_buttom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SortFilterBar extends StatelessWidget {
   SortFilterBar({super.key});

  final controller = Get.put(SortController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SortController>(
      builder: (_) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: () {
                    Get.to(() => FilterScreen());
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_list,
                        size: 22.sp,
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        "Filters",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: () {
                    Get.bottomSheet(
                      const SortBottomSheet(),
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.swap_vert),

                      const SizedBox(width: 8),

                      Text(controller.selectedSort,style: TextStyle(
                        fontSize: 13.w
                      ),),
                    ],
                  ),
                ),
              ),

              InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () {
                  // TODO: Grid/List Toggle
                },
                child: Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    Icons.grid_view_rounded,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}