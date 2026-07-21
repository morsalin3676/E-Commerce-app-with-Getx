import 'package:get/get.dart';

class CategoryController extends GetxController {

  int selectedTab = 0;

  final List<String> tabs = [
    "Women",
    "Men",
    "Kids",
  ];

  void changeTab(int index) {
    selectedTab = index;
    update();
  }
}