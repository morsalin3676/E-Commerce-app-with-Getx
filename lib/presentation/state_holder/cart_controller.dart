import 'package:e_commerce1/data/model/cart_model.dart';
import 'package:e_commerce1/data/model/promo_model.dart';
import 'package:e_commerce1/presentation/ui/utils/app_assets.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final List<CartModel> cartList = [

    CartModel(
      id: 1,
      name: "Pullover",
      brand: "Mango",
      image: AppAssets.tops,
      color: "Black",
      size: "L",
      price: 51,
      quantity: 1,
    ),

    CartModel(
      id: 2,
      name: "T-Shirt",
      brand: "LOST Ink",
      image: AppAssets.tops1,
      color: "Gray",
      size: "L",
      price: 30,
      quantity: 1,
    ),

    CartModel(
      id: 3,
      name: "Sport Dress",
      brand: "Dorothy Perkins",
      image: AppAssets.tops2,
      color: "Black",
      size: "M",
      price: 43,
      quantity: 1,
    ),
  ];



  String selectedPromo = "";
  int discount = 0;

  final List<PromoModel> promoList = [

    PromoModel(
      title: "Personal Offer",
      code: "mypromocode2020",
      discount: 10,
      description: "Personal offer",
      expire: "6 days remaining",
    ),

    PromoModel(
      title: "Summer Sale",
      code: "summer2020",
      discount: 15,
      description: "Summer Sale",
      expire: "23 days remaining",
    ),

    PromoModel(
      title: "Black Friday",
      code: "black2020",
      discount: 22,
      description: "Black Friday",
      expire: "6 days remaining",
    ),
  ];

  void applyPromo(PromoModel promo) {
    selectedPromo = promo.code;
    discount = promo.discount;
    update();

    Get.back();
  }

  //------------------------------------------------

  void increaseQuantity(int index) {
    cartList[index].quantity++;
    update();
  }

  //------------------------------------------------

  void decreaseQuantity(int index) {
    if (cartList[index].quantity > 1) {
      cartList[index].quantity--;
      update();
    }
  }

  //------------------------------------------------

  void removeItem(int index) {
    cartList.removeAt(index);
    update();
  }

  //------------------------------------------------

  double get totalAmount {
    double total = 0;

    for (final item in cartList) {
      total += item.totalPrice;
    }

    return total;
  }

// final Amount
  double get finalAmount {

    double total = totalAmount;

    if (discount != 0) {
      total = total - (total * discount / 100);
    }

    return total;
  }

}