import 'package:e_commerce1/data/model/product_models.dart';
import 'package:e_commerce1/presentation/ui/utils/dummy_product/dummy_product_iteam_list.dart';
import 'package:get/get.dart';

class CatalogController extends GetxController {

  List<ProductModel> products = dummyProducts;

  int selectedChip = 0;

  final List<String> chips = [
    "T-Shirts",
    "Crop Tops",
    "Sleeveless",
    "Hoodies",
  ];

  void selectChip(int index) {
    selectedChip = index;
    update();
  }

  void toggleFavorite(int index) {
    products[index].isFavorite = !products[index].isFavorite;
    update();
  }
}