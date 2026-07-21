import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  /// Price
  RangeValues priceRange = const RangeValues(20, 150);

  /// Selected Color
  int selectedColor = 0;

  /// Selected Size
  int selectedSize = 2;

  /// Selected Category
  int selectedCategory = 0;

  /// Dummy Data
  final List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.grey,
  ];

  final List<String> sizes = [
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];

  final List<String> categories = [
    "All",
    "Women",
    "Men",
    "Girls",
    "Boys",
  ];

  final List<String> brands = [
    "Adidas",
    "Nike",
    "Puma",
    "H&M",
    "Mango",
  ];

  void changePrice(RangeValues value) {
    priceRange = value;
    update();
  }

  void selectColor(int index) {
    selectedColor = index;
    update();
  }

  void selectSize(int index) {
    selectedSize = index;
    update();
  }

  void selectCategory(int index) {
    selectedCategory = index;
    update();
  }

  void discard() {
    priceRange = const RangeValues(20, 150);
    selectedColor = 0;
    selectedSize = 2;
    selectedCategory = 0;
    update();
  }

  void applyFilter() {
    Get.back();
  }
  String selectedBrand = "Adidas";

  void selectBrand(String brand) {
    selectedBrand = brand;
    update();
  }
}