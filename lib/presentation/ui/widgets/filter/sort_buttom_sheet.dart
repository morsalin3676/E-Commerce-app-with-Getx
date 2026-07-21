import 'package:e_commerce1/presentation/state_holder/bottom_sort_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SortController>();

    return GetBuilder<SortController>(
      builder: (_) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Text(
                  "Sort By",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                ...List.generate(
                  controller.sortList.length,
                      (index) {
                    return ListTile(
                      title: Text(controller.sortList[index]),

                      trailing:
                      controller.selectedIndex == index
                          ? const Icon(
                        Icons.check,
                        color: Colors.red,
                      )
                          : null,

                      onTap: () {
                        controller.selectSort(index);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}