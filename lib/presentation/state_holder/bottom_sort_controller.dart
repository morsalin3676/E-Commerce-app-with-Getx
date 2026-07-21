import 'package:get/get.dart';

class SortController extends GetxController {
  int selectedIndex = 0;

  final List<String> sortList = [
    "Popular",
    "Newest",
    "Customer Review",
    "Price: Lowest to High",
    "Price: Highest to Low",
  ];

  void selectSort(int index) {
    selectedIndex = index;
    update();
    Get.back();
  }

  String get selectedSort => sortList[selectedIndex];
}